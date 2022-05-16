CREATE TABLE Customer(
Customer_Id VARCHAR(20) PRIMARY KEY,
Customer_Name VARCHAR(20) NOT NULL,
Customer_Tel Number
);


CREATE TABLE Product(
Product_Id VARCHAR(20) PRIMARY KEY,
Product_Name VARCHAR(20) NOT NULL,
Price Number CHECK(Price>0)
);


CREATE TABLE Orders(
Customer_Id VARCHAR(20) PRIMARY KEY,
Product_Id VARCHAR(20) PRIMARY KEY,
Quntity NUMBER,
Total_amount NUMBER,
CONSTRAINT fk_Orders_Customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
CONSTRAINT fk_Orders_Products FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id) 
);

ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT 'SYSDATE';