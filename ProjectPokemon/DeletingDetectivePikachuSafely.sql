
BEGIN TRANSACTION
DELETE FROM ProjectPokemon.dbo.CardData
WHERE CHARINDEX('Detective Pikachu', ProjectPokemon.dbo.CardData.CardName) > 0
SELECT * 
FROM ProjectPokemon.dbo.CardData

COMMIT TRAN
SELECT * 
FROM ProjectPokemon.dbo.CardData