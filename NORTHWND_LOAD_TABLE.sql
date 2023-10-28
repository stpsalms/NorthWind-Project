CREATE DATABASE NORTHWND

USE NORTHWND

CREATE TABLE categories
(
  CategoryID INT Primary Key NOT NULL,
  CategoryName NVARCHAR(50) NULL,
  Description ntext NULL,
  Picture IMAGE
);

ALTER TABLE categories
ALTER COLUMN CategoryID INT Primary Key NOT NULL


CREATE TABLE products
(ProductID INT NOT NULL Primary Key,
ProductName VARCHAR (50),
SupplierID INT,
CategoryID INT,
QuantityPerUnit VARCHAR (20),
UnitPrice FLOAT,
UnitsInStock INT,
UnitsOnOrder INT,
ReorderLevel INT,
Discontinued INT);

CREATE TABLE suppliers
(SupplierID INT NOT NULL Primary Key,
CompanyName VARCHAR (50),
ContactName VARCHAR (50),
ContactTitle VARCHAR (50),
Address VARCHAR (50),
City VARCHAR (50),
Region VARCHAR (50),
PostalCode  VARCHAR (50),
Country NCHAR (20),
Phone INT,
Fax INT,
HomePage VARCHAR (50),
);

CREATE TABLE order_details
(OrderID INT NOT NULL,
ProductID INT,
UnitPrice FLOAT,
Quantity INT,
Discount FLOAT);

CREATE TABLE customers
(CustomerID VARCHAR (50),
CompanyName VARCHAR (50),
ContactName VARCHAR (50),
ContactTitle VARCHAR (50),
Address VARCHAR (50),
City VARCHAR (50),
Region VARCHAR (50),
PostalCode VARCHAR (50),
Country NCHAR (20),
Phone INT,
Fax INT);

CREATE TABLE customers_customer_demo
(CustomerID VARCHAR (50),
Customer_type_ID CHAR (10),
);

CREATE TABLE customers_demographics
(Customer_type_ID CHAR (10),
Customer_desc ntext NULL);

CREATE TABLE orders
(OrderID INT NOT NULL Primary Key,
CustomerID VARCHAR (50),
EmployeeID CHAR(10),
OrderDate DATE NOT NULL,
RequiredDate DATE NOT NULL,
ShippedDate DATE NOT NULL,
ShipVal INT,
Freight FLOAT,
ShipName VARCHAR (50),
ShipAddress VARCHAR (50),
ShipCity VARCHAR (50),
ShipRegion VARCHAR (50),
ShipPostal VARCHAR (50),
ShipCountry VARCHAR (50),
);
--DROP TABLE orders

CREATE TABLE shippers
(ShipperID VARCHAR (50) Primary key,
CompanyName VARCHAR (50),
Phone INT);

CREATE TABLE us_states
(StateID VARCHAR (50),
StateName VARCHAR (50),
StateAbbr CHAR (5),
StateRegion VARCHAR (50),
);

CREATE TABLE employees
(EmployeeID CHAR(10) Primary Key,
lastName VARCHAR (50),
FirstName VARCHAR (50),
Title VARCHAR (50),
TitleOFCourtesy CHAR(5),
BirthDate DATE NOT NULL,
HireDate DATE NOT NULL,
Address VARCHAR (50),
City VARCHAR (50),
Region VARCHAR (50),
PostalCode VARCHAR (50),
Country VARCHAR (50),
HomePhone INT,
Extension INT,
Photo IMAGE,
Notes VARCHAR (100),
ReportTo VARCHAR (100),
PhotoPath VARCHAR (100),
);

CREATE TABLE employees_territories
(employeeID INT,
territoryID CHAR(10),
);

CREATE TABLE territories
(TerritoryID INT NOT NULL Primary Key,
TerritoryDescription VARCHAR (25),
RegionID INT);

CREATE TABLE region
(RegionID INT NOT NULL Primary Key,
RegionDescription VARCHAR (25),
);