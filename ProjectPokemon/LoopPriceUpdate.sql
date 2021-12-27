
DECLARE @count INT
SET @count = 1
WHILE (@count < 15)
BEGIN
	IF (@count = 1)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 9.90
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 334.16
		WHERE SetID = @count	
	END
	
	IF (@count = 2)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 7.58
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 261.47
		WHERE SetID = @count	
	END

	IF (@count = 3)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 11.02
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 325.47
		WHERE SetID = @count	
	END

	IF (@count = 4)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 25.79
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = NULL
		WHERE SetID = @count	
	END

	IF (@count = 5)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 12.40
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 319.97
		WHERE SetID = @count	
	END

	IF (@count = 6)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 14.69
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 418.53
		WHERE SetID = @count	
	END

	IF (@count = 7)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 9.79
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 366.78
		WHERE SetID = @count	
	END

	IF (@count = 8)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 8.73
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 303.28
		WHERE SetID = @count	
	END

	IF (@count = 9)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 14.09
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = NULL
		WHERE SetID = @count	
	END

	IF (@count = 10)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 11.15
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 414.88
		WHERE SetID = @count	
	END

	IF (@count = 11)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 6.04
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 221.99
		WHERE SetID = @count	
	END

	IF (@count = 12)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = NULL
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = NULL
		WHERE SetID = @count	
	END

	IF (@count = 13)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 5.51
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 184.41
		WHERE SetID = @count	
	END

	IF (@count = 14)
	BEGIN
	UPDATE ProjectPokemon.dbo.CardSet
	SET PackPrice = 6.45
		WHERE SetID = @count
	UPDATE ProjectPokemon.dbo.CardSet
	SET BoxPrice = 194.00
		WHERE SetID = @count	
	END

	SET @count = (@count +  1)

END

SELECT TOP (1000) [SetID]
      ,[SetName]
      ,[PackPrice]
      ,[BoxPrice]
  FROM [ProjectPokemon].[dbo].[CardSet]
