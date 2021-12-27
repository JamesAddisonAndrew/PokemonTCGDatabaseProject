/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [MediumID]
      ,[MediumNation]
      ,[MediumCity]
  FROM [ProjectPokemon].[dbo].[TournamentMedium]

  INSERT INTO ProjectPokemon.dbo.TournamentMedium
  VALUES
  --(1001, 'Online', NULL)
  (1002, 'Chile', 'Santiago'),
  (1003, 'Australia','Perth'),
  (1004, 'Guatemala', 'Guatemala City'),
  (1005, 'Sweden', 'Malmo'),
  (1006, 'Australia', 'Melbourne'),
  (1007, 'Puerto Rico', 'Bayamon'),
  (1008, 'Brazil', 'Guaiba'),
  (1009, 'Peru', 'Lima'), 
  (1010, 'Costa Rica', 'San Jose'),
  (1011, 'Argentina,', 'Buenos Aires'),
  (1012, 'Brazil', 'San Paulo'),
  (1013, 'Germany', 'Bochum'),
  (1014, 'Malaysia', 'Kuala Lumpur'),
  (1015, 'South Korea', 'Seoul'),
  (1016, 'Chile', 'Lumpur'),
  (1017, 'Singapore', 'Singapore'),
  (1018, 'United States', 'San Diego'),
  (1019, 'Australia', 'Brisbane'), 
  (1020, 'United States', 'Daytona Beach'),
  (1021, 'France', 'Paris'), 
  (1022, 'United States', 'Daytona Beach'), 
  (1023, 'Brazil', 'Campinas'),
  (1024, 'United States', 'Atlantic City'), 
  (1025, 'Germany', 'Cologne'), 
  (1026, 'England', 'Sheffield'),
  (1027, 'United States', 'DC')
