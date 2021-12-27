/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CardNumber]
      ,[CardName]
      ,[PriceLow]
      ,[PriceMed]
      ,[PriceHigh]
      ,[CardSet]
  FROM [ProjectPokemon].[dbo].[CardData]

  DELETE FROM CardData
  WHERE CardName = 'promo'; 
