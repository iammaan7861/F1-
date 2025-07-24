CREATE OR ALTER VIEW [rpt].[vw_RaceResults]
AS




SELECT TOP 100 [Column0]        AS [UniqueID]
      ,CAST([Year]              AS INT)AS [YEAR]
      , ([Position])            AS [DRIVERPOSITION]
      ,CAST([Driver No.]        AS INT)AS[drivernumber]
      ,[Venue]                  AS [trackname]
      ,[Name]                   AS [drivername]
      ,[NameTag]                AS[driver nametag]
      ,[Team]                   AS [driverteam]
      ,CAST([Laps]              AS INT) AS [laps]
      ,[Time]                   AS [totak race time]
      ,[Points]
  FROM [Formula1].[dbo].[race_results_1950-2020]
 

--CREATE CLUSTERED COLUMNSTORE INDEX[IX_race_results_1950-2020_   CCS] ON DBO.[race_results_1950-2020];
--UPDATE STATISTICS [Formula1].[dbo].[race_results_1950-2020];
