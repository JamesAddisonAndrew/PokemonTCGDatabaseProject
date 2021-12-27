/****** Script for SelectTopNRows command from SSMS  ******/


BEGIN TRANSACTION 
ALTER TABLE CardData 
ADD CardID AS CAST(CardSet AS varchar) + ' ' + CAST(CardNumber AS varchar)
SELECT TOP (1000) [CardNumber]
      ,[CardName]
      ,[PriceLow]
      ,[PriceMed]
      ,[PriceHigh]
      ,[CardSet]
	  ,[CardID]
  FROM [ProjectPokemon].[dbo].[CardData]


COMMIT TRAN
ROLLBACK TRAN