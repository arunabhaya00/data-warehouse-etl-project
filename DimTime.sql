DROP TABLE IF EXISTS DimTime;

CREATE TABLE DimTime (
    time_sk    INT IDENTITY(1,1) PRIMARY KEY,     -- Surrogate key (DW internal ID)
    time_key   NVARCHAR(50) UNIQUE,               -- Business key (e.g., '20250429-08')
    [date]     DATETIME2(7) NULL,                 -- Exact date
    hour       TINYINT NULL,                      -- Hour of the day (0-23)
    day        TINYINT NULL,                      -- Day of the week (1-7)
    week       NVARCHAR(50) NULL,                 -- Week label or number (e.g., 'Week 17')
    month      TINYINT NULL,                      -- Month number (1-12)
    quarter    NVARCHAR(50) NULL,                      -- Quarter (1-4)
    year       SMALLINT NULL                      -- Year (e.g., 2025)
);