Use Northwnd;
GO
 
-- import the file
BULK INSERT  dbo.region
FROM 'C:\Users\Balogun\Documents\Region.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO



BULK INSERT  dbo.orders
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Orders.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT  dbo.territories
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Territories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT  dbo.order_details
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Order_Details.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT  dbo.employees
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Employees.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT  dbo.employees_territories
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\EmployeeTerritories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT  dbo.categories
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\categories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT  dbo.customers
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Customers.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT  dbo.employees
FROM 'C:\Users\Balogun\Downloads\Data Analytics\SQL_project\Employees.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO







use NORTHWND

select * from employees

alter table employees
alter column EmployeeID INT NOT NULL

DELETE FROM employees WHERE FirstName = 'Anne'
