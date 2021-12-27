SELECT *
FROM  ProjectPokemon.dbo.CardData

BEGIN TRANSACTION 
ALTER TABLE ProjectPokemon.dbo.CardData
ADD CardID AS CAST (CardSet AS varchar) + ' ' + CAST (CardNumber AS varchar)

COMMIT TRAN
--ROLLBACK TRAN