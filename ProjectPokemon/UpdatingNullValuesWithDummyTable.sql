BEGIN TRANSACTION 
UPDATE ProjectPokemon.dbo.Tournaments
SET ProjectPokemon.dbo.Tournaments.TMedium = ProjectPokemon.dbo.Dummy.MEDID
FROM ProjectPokemon.dbo.Tournaments
JOIN ProjectPokemon.dbo.Dummy ON Dummy.TOURID = Tournaments.TournamentID 

SELECT* 
FROM ProjectPokemon.dbo.Tournaments

COMMIT TRAN
--ROLLBACK TRAN