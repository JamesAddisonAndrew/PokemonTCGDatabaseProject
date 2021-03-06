USE [ProjectPokemon]
GO
/****** Object:  StoredProcedure [dbo].[TopPlayersTournaments]    Script Date: 5/11/2021 12:25:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[TopPlayersTournaments] 
@Placement int
AS
CREATE TABLE #TempResults (
TornyName varchar(100), 
PlayerName varchar(100), 
Result int,
TopPlacements int
)

INSERT INTO #TempResults
SELECT Tor.TournamentName, PlayerName, Res.Placement, Top32s
FROM ProjectPokemon.dbo.Players AS Play
JOIN ProjectPokemon.dbo.Results AS Res
	ON  Play.PlayerID = Res.PlayerID
JOIN ProjectPokemon.dbo.Tournaments AS Tor
	ON Res.TournamentID = Tor.TournamentID
WHERE Top32s >= @Placement

SELECT* 
FROM #TempResults
ORDER BY PlayerName

