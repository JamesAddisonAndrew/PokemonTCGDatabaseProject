

BEGIN TRANSACTION
ALTER TABLE CardData ALTER COLUMN CardID int NOT NULL

ALTER TABLE CardData DROP COLUMN CardID 

ALTER TABLE CardData
ADD CardID AS 
(CAST((CAST (CardSet AS varchar(10)) + ' ' + CAST(CardNumber AS varchar(10))) AS varchar))

PERSISTED NOT NULL


ALTER TABLE CardData
ADD UNIQUE (CardID)