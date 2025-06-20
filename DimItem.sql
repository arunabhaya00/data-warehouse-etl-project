DROP TABLE IF EXISTS DimItem;

CREATE TABLE DimItem (
    item_sk       INT IDENTITY(1,1) PRIMARY KEY,
    item_key      NVARCHAR(50) UNIQUE,
    item_name     NVARCHAR(50) NULL,
    [desc]        NVARCHAR(50) NULL,
    unit_price    FLOAT NULL,
    man_country   NVARCHAR(50) NULL,
    supplier      NVARCHAR(50) FOREIGN KEY REFERENCES DimTransaction(supplier),
    unit          NVARCHAR(50) NOT NULL,
    start_date    DATETIME NOT NULL,
    end_date      DATETIME NULL,
    insert_date   DATETIME,
    modified_date DATETIME
);