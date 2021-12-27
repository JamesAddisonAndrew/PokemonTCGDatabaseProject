/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DeckID]
      ,[DeckName]
      ,[KeyCard1]
      ,[KeyCard2]
  FROM [ProjectPokemon].[dbo].[DeckData]

BEGIN TRANSACTION 

UPDATE ProjectPokemon.dbo.DeckData
SET DeckName = (SELECT DeckName
				FROM ProjectPokemon.dbo.DeckData
				WHERE DeckID = 1080),

	KeyCard1 = (SELECT KeyCard1
				FROM ProjectPokemon.dbo.DeckData
				WHERE DeckID = 1080),

	KeyCard2 = (SELECT KeyCard2
				FROM ProjectPokemon.dbo.DeckData
				WHERE DeckID = 1080)
WHERE DeckID = 1047

DELETE FROM ProjectPokemon.dbo.DeckData
WHERE DeckID = 1080

COMMIT TRAN
--ROLLBACK TRAN