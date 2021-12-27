CREATE FUNCTION [dbo].[TotalPlayerPoints] (@PlayerID int)
RETURNS SMALLINT
AS
BEGIN
	DECLARE @PointCount int;
	SELECT @PointCount = COUNT (TournamentID)
	FROM Results
	WHERE PlayerID = @PlayerID
	RETURN @PointCount
END;
GO