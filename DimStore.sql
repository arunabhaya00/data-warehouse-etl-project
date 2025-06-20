DROP TABLE IF EXISTS DimStore;

CREATE TABLE DimStore (
    store_sk      INT IDENTITY(1,1) PRIMARY KEY,      -- Surrogate key (DW internal key)
    store_key     NVARCHAR(50) UNIQUE,                -- Business key (e.g., 'S001')
    division      NVARCHAR(50) NULL,                  -- Region/Division
    district      NVARCHAR(50) NULL,                  -- District
    upazila       NVARCHAR(50) NULL,                  -- Sub-district
    start_date    DATETIME NOT NULL,                  -- When this version is effective
    end_date      DATETIME NULL,                      -- NULL = active
    insert_date   DATETIME,                           -- Record insert timestamp
    modified_date DATETIME                            -- Last updated timestamp
);