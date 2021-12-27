/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM DeckData
WHERE DeckID = 1063

UPDATE DeckData
SET DeckName = 'Frostmoth Lapras', KeyCard2 = 'Lapras V'
WHERE DeckID = 1063
