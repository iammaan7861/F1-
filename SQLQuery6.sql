-- Check if the view already exists and drop it if it does
IF OBJECT_ID('rpt.vw_RaceResult', 'V') IS NOT NULL
    DROP VIEW rpt.vw_RaceResults;
GO

-- Create the view from scratch
CREATE VIEW rpt.vw_RaceResult
AS
SELECT TOP 1000
    [Column0]               AS [UniqueID],
    CAST([Year] AS INT)     AS [YEAR],
    CAST([Position] AS INT) AS [DRIVERPOSITION],
    CAST([Driver No.] AS INT) AS [drivernumber],
    [Venue]                 AS [trackname],
    [Name]                  AS [drivername],
    [NameTag]               AS [driver nametag],
    [Team]                  AS [driverteam],
    CAST([Laps] AS INT)     AS [laps],
    [Time]                  AS [total race time], -- Corrected typo here
    [Points]
FROM 
    [Formula1].[dbo].[race_results_1950-2020];
GO