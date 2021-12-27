
	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 10
	WHERE CHARINDEX('Cosmic Eclipse', ProjectPokemon.dbo.CardData.CardName) > 0
	
	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 3
	WHERE CHARINDEX('Celestial Storm', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 4
	WHERE CHARINDEX('Dragon Majesty', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 4
	WHERE CHARINDEX('Dragon Majesty', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 2
	WHERE CHARINDEX('Forbidden Light', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 9
	WHERE CHARINDEX('Hidden Fates', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 5
	WHERE CHARINDEX('Lost Thunder', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 6
	WHERE CHARINDEX('Team Up', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 7
	WHERE CHARINDEX('Unbroken Bonds', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 8
	WHERE CHARINDEX('Unified Minds', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 1
	WHERE CHARINDEX('Ultra Prism', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 14
	WHERE CHARINDEX('Darkness Ablaze', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 13
	WHERE CHARINDEX('Rebel Clash', ProjectPokemon.dbo.CardData.CardName) > 0

	UPDATE ProjectPokemon.dbo.CardData
	SET CardSet = 12
	WHERE CHARINDEX('Promo', ProjectPokemon.dbo.CardData.CardName) > 0
SELECT * 
FROM ProjectPokemon.dbo.CardData
SELECT * 
FROM ProjectPokemon.dbo.CardSet

 
	