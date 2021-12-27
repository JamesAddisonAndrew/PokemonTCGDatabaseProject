/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DeckID]
      ,[CardID]
      ,[KeyCard]
  FROM [ProjectPokemon].[dbo].[DeckCards]


BEGIN TRANSACTION 
WITH DeckIDCTE AS
(
	SELECT *, ROW_NUMBER() OVER(Partition BY DeckID, CardID ORDER BY DeckID, CardID) AS RowNumber
	FROM DeckCards
)

SELECT * FROM DeckIDCTE

DELETE FROM DeckIDCTE WHERE RowNumber > 1

SELECT [DeckID], 
       [CardID],
       COUNT(*) AS CNT
FROM [ProjectPokemon].[dbo].[DeckCards]
GROUP BY [DeckID], 
         [CardID]
HAVING COUNT(*) > 1;
