UPDATE  [ProjectPokemon].[dbo].[Tournaments]
SET [ProjectPokemon].[dbo].[Tournaments].NumPlayers = [ProjectPokemon].[dbo].Sheet1$.Players
FROM [ProjectPokemon].[dbo].[Tournaments]
JOIN [ProjectPokemon].[dbo].[Sheet1$]
ON ([ProjectPokemon].[dbo].[Tournaments].TournamentID = [ProjectPokemon].[dbo].[Sheet1$].ID) 

SELECT * 
FROM [ProjectPokemon].[dbo].[Tournaments]

UPDATE  [ProjectPokemon].[dbo].[Tournaments]
SET [ProjectPokemon].[dbo].[Tournaments].TournamentDate = [ProjectPokemon].[dbo].Sheet1$.date
FROM [ProjectPokemon].[dbo].[Tournaments]
JOIN [ProjectPokemon].[dbo].[Sheet1$]
ON ([ProjectPokemon].[dbo].[Tournaments].TournamentID = [ProjectPokemon].[dbo].[Sheet1$].ID) 

SELECT * 
FROM [ProjectPokemon].[dbo].[Tournaments]