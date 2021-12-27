/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (5000) [CardNumber]
      ,[CardName]
      ,[PriceLow]
      ,[PriceMed]
      ,[PriceHigh]
      ,[CardSet]
      ,[CardID]
  FROM [ProjectPokemon].[dbo].[CardData]
  
  BEGIN TRANSACTION 
  DELETE FROM [ProjectPokemon].[dbo].[CardData]
  WHERE [ProjectPokemon].[dbo].[CardData].[CardSet] = 11
  COMMIT TRAN