ALTER VIEW rpt.vw_RaceResults
AS
SELECT TOP 100000 
    [Column0]               AS [UniqueID],
    CAST([Year] AS INT)     AS [YEAR],
    -- Use TRY_CAST for columns that might contain non-numeric text
    TRY_CAST([Position] AS INT) AS [DRIVERPOSITION],
    TRY_CAST([Driver No.] AS INT) AS [drivernumber],
    [Venue]                 AS [trackname],
    [Name]                  AS [drivername],
    [NameTag]               AS [driver nametag],
    [Team]                  AS [driverteam],
    TRY_CAST([Laps] AS INT)     AS [laps],
    [Time]                  AS [total race time],
    [Points]
FROM 
    [Formula1].[dbo].[race_results_1950-2020];
GO