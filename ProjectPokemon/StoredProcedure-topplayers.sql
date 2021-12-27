


CREATE PROCEDURE TopPlayersTournaments 
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


EXEC TopPlayersTournaments @Placement = 3




