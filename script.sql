USE [master]
GO
/****** Object:  Database [ProjectPokemon]    Script Date: 1/5/2022 5:42:45 PM ******/
CREATE DATABASE [ProjectPokemon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectPokemon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectPokemon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectPokemon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectPokemon_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectPokemon] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectPokemon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectPokemon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectPokemon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectPokemon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectPokemon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectPokemon] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectPokemon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectPokemon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectPokemon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectPokemon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectPokemon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectPokemon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectPokemon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectPokemon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectPokemon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectPokemon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectPokemon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectPokemon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectPokemon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectPokemon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectPokemon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectPokemon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectPokemon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectPokemon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectPokemon] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectPokemon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectPokemon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectPokemon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectPokemon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectPokemon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectPokemon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectPokemon] SET QUERY_STORE = OFF
GO
USE [ProjectPokemon]
GO
/****** Object:  UserDefinedFunction [dbo].[TotalPlayerPoints]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TotalPlayerPoints] (@PlayerID int)
RETURNS SMALLINT
AS
BEGIN
	DECLARE @PointCount int;
	SELECT @PointCount = COUNT (TournamentID)
	FROM Results
	WHERE PlayerID = @PlayerID
	RETURN @PointCount
END;
GO
/****** Object:  Table [dbo].[CardData]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardData](
	[CardNumber] [int] NOT NULL,
	[CardName] [nvarchar](255) NOT NULL,
	[PriceLow] [decimal](18, 2) NULL,
	[PriceMed] [decimal](18, 2) NULL,
	[PriceHigh] [decimal](18, 2) NULL,
	[CardSet] [int] NOT NULL,
	[CardID]  AS (CONVERT([varchar],(CONVERT([varchar](10),[CardSet])+' ')+CONVERT([varchar](10),[CardNumber]))) PERSISTED NOT NULL,
 CONSTRAINT [PK_CardData] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardSet]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardSet](
	[CardSet] [int] NOT NULL,
	[SetName] [varchar](50) NOT NULL,
	[PackPrice] [decimal](18, 2) NULL,
	[BoxPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CardSet] PRIMARY KEY CLUSTERED 
(
	[CardSet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckCards]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckCards](
	[DeckID] [int] NOT NULL,
	[CardID] [varchar](30) NOT NULL,
	[KeyCard] [bit] NULL,
 CONSTRAINT [PK_DeckCards] PRIMARY KEY CLUSTERED 
(
	[DeckID] ASC,
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckData]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckData](
	[DeckID] [int] NOT NULL,
	[DeckName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeckData] PRIMARY KEY CLUSTERED 
(
	[DeckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayerID] [int] NOT NULL,
	[PlayerName] [nvarchar](255) NULL,
	[Top32s]  AS ([dbo].[TotalPlayerPoints]([PlayerID])),
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[TournamentID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[DeckID] [int] NULL,
	[Placement] [int] NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[TournamentID] ASC,
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentMedium]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentMedium](
	[MediumID] [int] NOT NULL,
	[MediumNation] [varchar](50) NOT NULL,
	[MediumCity] [varchar](50) NULL,
	[MediumRegion] [varchar](2) NULL,
 CONSTRAINT [PK_TournamentMedium] PRIMARY KEY CLUSTERED 
(
	[MediumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournaments](
	[TournamentID] [int] NOT NULL,
	[TournamentName] [varchar](50) NOT NULL,
	[TournamentMed] [int] NULL,
	[TournamentDate] [varchar](50) NULL,
	[NumPlayers] [int] NULL,
	[Winner] [varchar](50) NULL,
 CONSTRAINT [PK_Tournaments] PRIMARY KEY CLUSTERED 
(
	[TournamentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CardData]  WITH CHECK ADD  CONSTRAINT [FK_CardData_CardSet] FOREIGN KEY([CardSet])
REFERENCES [dbo].[CardSet] ([CardSet])
GO
ALTER TABLE [dbo].[CardData] CHECK CONSTRAINT [FK_CardData_CardSet]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_CardData] FOREIGN KEY([DeckID])
REFERENCES [dbo].[DeckData] ([DeckID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_CardData]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_CardData1] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardData] ([CardID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_CardData1]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Players] FOREIGN KEY([DeckID])
REFERENCES [dbo].[DeckData] ([DeckID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Players]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Players1] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Players] ([PlayerID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Players1]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Tournaments] FOREIGN KEY([TournamentID])
REFERENCES [dbo].[Tournaments] ([TournamentID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Tournaments]
GO
ALTER TABLE [dbo].[Tournaments]  WITH CHECK ADD  CONSTRAINT [FK_Tournaments_TournamentMedium] FOREIGN KEY([TournamentMed])
REFERENCES [dbo].[TournamentMedium] ([MediumID])
GO
ALTER TABLE [dbo].[Tournaments] CHECK CONSTRAINT [FK_Tournaments_TournamentMedium]
GO
/****** Object:  StoredProcedure [dbo].[NetDeck]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NetDeck]
@Placement int,
@PriceCap decimal(10,2)

AS 


CREATE TABLE #TempResults (
	DeckID int, 
	CardName varchar(100), 
	CardPrice decimal(10,2))


INSERT INTO #TempResults
			SELECT DeckID, CardName, PriceMed
			FROM ProjectPokemon.dbo.DeckCards AS  DC
			INNER JOIN ProjectPokemon.dbo.CardData AS CD
				ON DC.CardID = CD.CardID
			WHERE DeckID IN
				   (SELECT DISTINCT DeckID
					FROM ProjectPokemon.dbo.Results
					WHERE Placement >= @Placement)

SELECT *
FROM #TempResults
WHERE DeckID NOT IN (SELECT DISTINCT DeckID
					 FROM ProjectPokemon.dbo.DeckCards AS  DC
					 INNER JOIN ProjectPokemon.dbo.CardData AS CD
					 ON DC.CardID = CD.CardID
					 WHERE PriceMed > @PriceCap)

ORDER BY DeckID
GO
/****** Object:  StoredProcedure [dbo].[TopPlayersTournaments]    Script Date: 1/5/2022 5:42:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TopPlayersTournaments] 
@Placement int
AS
CREATE TABLE #TempResults (
TornyName varchar(100), 
PlayerName varchar(100), 
Result int,
TopPlacements int
)

INSERT INTO #TempResults
SELECT Tor.TournamentName, PlayerName, Res.Placement, Top32s
FROM ProjectPokemon.dbo.Players AS Play
JOIN ProjectPokemon.dbo.Results AS Res
	ON  Play.PlayerID = Res.PlayerID
JOIN ProjectPokemon.dbo.Tournaments AS Tor
	ON Res.TournamentID = Tor.TournamentID
WHERE Top32s >= @Placement

SELECT* 
FROM #TempResults
ORDER BY PlayerName

GO
USE [master]
GO
ALTER DATABASE [ProjectPokemon] SET  READ_WRITE 
GO
