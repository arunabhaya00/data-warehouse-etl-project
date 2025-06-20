DROP TABLE IF EXISTS DimTransaction;

CREATE TABLE DimTransaction (
    transaction_sk INT IDENTITY(1,1) PRIMARY KEY,
    payment_key    NVARCHAR(50) UNIQUE,
    trans_type     NVARCHAR(50) NULL,
    bank_name      NVARCHAR(100) NULL,
    supplier       NVARCHAR(50) UNIQUE,
    insert_date    DATETIME,
    modified_date  DATETIME
);
