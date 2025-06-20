DROP TABLE IF EXISTS FactSales;

CREATE TABLE FactSales (
    salesID_sk      INT IDENTITY(1,1) PRIMARY KEY,
    customer_key  NVARCHAR(50) FOREIGN KEY REFERENCES DimCustomer(coustomer_key),
    time_key      NVARCHAR(50) FOREIGN KEY REFERENCES DimTime(time_key),
    item_key      NVARCHAR(50) FOREIGN KEY REFERENCES DimItem(item_key),
    store_key     NVARCHAR(50) FOREIGN KEY REFERENCES DimStore(store_key),

    quantity      TINYINT NOT NULL,
    unit          NVARCHAR(50) NOT NULL,
    unit_price    FLOAT NOT NULL,
    total_price   FLOAT NOT NULL,

    insert_date   DATETIME,
    modified_date DATETIME
);
