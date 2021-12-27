SELECT CardID FROM CardData ORDER BY CardID 

SELECT CardID FROM DeckCards ORDER BY CardID

SELECT CardID FROM DeckCards   
WHERE CardID NOT IN 
(SELECT CardID FROM CardData)

SELECT TOP (5000) [CardNumber]
      ,[CardName]
      ,[PriceLow]
      ,[PriceMed]
      ,[PriceHigh]
      ,[CardSet]
      ,[CardID]
  FROM [ProjectPokemon].[dbo].[CardData]
ORDER BY CardID

UPDATE DeckCards
SET CardID = '7 57'
WHERE CardID = '7  57'

UPDATE DeckCards
SET CardID = 
	CASE 
	WHEN CardID = '1 173' THEN '10 173'
	WHEN CardID = '1 178' THEN '10 178'
	WHEN CardID = '1 179' THEN '10 179'
	WHEN CardID = '1 180' THEN '10 180'
	WHEN CardID = '1 183' THEN '10 183'
	WHEN CardID = '1 186' THEN '10 186'
	WHEN CardID = '2 148' THEN '10 148'
	WHEN CardID = '2 187' THEN '10 187'
END
WHERE CardID IN ('1 173', '1 178', '1 179','1 180', '1 183', '1 186', '2 148', '2 187')

