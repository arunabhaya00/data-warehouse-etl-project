DROP TABLE IF EXISTS DimCustomer;

CREATE TABLE DimCustomer (
    customer_sk   INT IDENTITY(1,1) PRIMARY KEY,      -- Surrogate Key (unique row ID for DW)
    coustomer_key  NVARCHAR(50) UNIQUE,                -- Business Key (e.g., 'C00001')
    name          NVARCHAR(100) NULL,                 -- Customer Name (can change over time)
    contact_no    BIGINT NULL,                        -- Contact Number (can change over time)
    nid           BIGINT NOT NULL,                    -- National ID (should not change)
    start_date    DATETIME NOT NULL,                  -- When this version became valid
    end_date      DATETIME NULL,                      -- NULL = currently active
    insert_date   DATETIME,                           -- When the row was inserted
    modified_date DATETIME                            -- Last time this record was modified
);