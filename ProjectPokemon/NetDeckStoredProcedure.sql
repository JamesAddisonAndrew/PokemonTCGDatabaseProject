
CREATE PROCEDURE NetDeck
@Placement int,
@PriceCap decimal(10,2)

AS 


CREATE TABLE #TempResults (
	DeckID int, 
	CardName varchar(100), 
	CardPrice decimal(10,2))


INSERT INTO #TempResults
			SELECT DeckID, CardName, PriceMed
			FROM ProjectPokemon.dbo.DeckCards AS  DC
			INNER JOIN ProjectPokemon.dbo.CardData AS CD
				ON DC.CardID = CD.CardID
			WHERE DeckID IN
				   (SELECT DISTINCT DeckID
					FROM ProjectPokemon.dbo.Results
					WHERE Placement >= @Placement)

SELECT *
FROM #TempResults
WHERE DeckID NOT IN (SELECT DISTINCT DeckID
					 FROM ProjectPokemon.dbo.DeckCards AS  DC
					 INNER JOIN ProjectPokemon.dbo.CardData AS CD
					 ON DC.CardID = CD.CardID
					 WHERE PriceMed > @PriceCap)

ORDER BY DeckID



