/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [TournamentID]
      ,[TournamentName]
      ,[TMedium]
      ,[TournamentDate]
      ,[NumPlayers]
      ,[Winner]
  FROM [ProjectPokemon].[dbo].[Tournaments]

  BEGIN TRANSACTION
  UPDATE Tournaments
  SET TournamentDate = REPLACE(TournamentDate, ' 12:00AM', '')
  SELECT * 
  FROM Tournaments
  COMMIT TRAN