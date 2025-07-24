CREATE OR ALTER VIEW rpt.vw_RaceResults
AS
SELECT TOP 1000000000000
    [Column0]               AS [UniqueID],
    CAST([Year] AS INT)     AS [YEAR],
    -- Use TRY_CAST for columns that might contain non-numeric text
    COALESCE (TRY_CAST([Position]AS INT),99) AS [DRIVERPOSITION],
    TRY_CAST([Driver No.] AS INT) AS [drivernumber],
    [Venue]                 AS [trackname],
    [Name]                  AS [drivername],
    [NameTag]               AS [driver nametag],
    [Team]                  AS [driverteam],
    TRY_CAST([Laps] AS INT)     AS [laps],
  [Time]                          AS [total race time],
    CAST([Points] AS DECIMAL(10, 2)) AS [Points],
    
    -- This new line calculates the maximum laps for each race
    MAX(TRY_CAST(Laps AS INT)) OVER (PARTITION BY [Year], [Venue]) AS [TotalRaceLaps]

FROM 
    [Formula1].[dbo].[race_results_1950-2020]
GO



