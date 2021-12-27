ALTER TABLE Players
ADD Top32s AS dbo.TotalPlayerPoints(PlayerID)