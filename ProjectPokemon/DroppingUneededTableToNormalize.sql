SELECT* 
FROM ProjectPokemon.dbo.Tournaments

SELECT* 
FROM ProjectPokemon.dbo.TournamentMedium

BEGIN TRANSACTION 
ALTER TABLE ProjectPokemon.dbo.Tournaments
DROP COLUMN TournamentNation

COMMIT TRAN
--ROLLBACK TRAN