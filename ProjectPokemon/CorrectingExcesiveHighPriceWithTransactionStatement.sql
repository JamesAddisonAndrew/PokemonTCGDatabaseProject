
--High price data is unrealistic, going to normalize the data here and introduce 
--Stored procedure to add new data and auto corect based on the idea that a high 
--Should be around 1.5 times higher than the medium. 

BEGIN TRANSACTION 
UPDATE ProjectPokemon.dbo.CardData
SET PriceHigh = PriceMed * 1.5 
SELECT* 
FROM ProjectPokemon.dbo.CardData

COMMIT TRAN
--ROLLBACK TRAN
SELECT* 
FROM ProjectPokemon.dbo.CardData