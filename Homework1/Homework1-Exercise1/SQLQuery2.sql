CREATE TABLE [Employee](
[Id] INT PRIMARY KEY NOT NULL,
[FirstName] NVARCHAR(100) NOT NULL,
[LastName] NVARCHAR(100) NOT NULL,
[DateOfBirth] DATE, 
[Gender] NCHAR(1),
[HireDate] DATE,
[NationalIdNumber] NVARCHAR(20),
);
SELECT * FROM [Employee];
INSERT INTO [Employee] VALUES(5,'Dimitar','Josifovski','1999-07-22','M','2022-05-24','55');
INSERT INTO [Employee] VALUES(7,'Elon','Musk','1983-05-12','M','2019-02-28','23');
INSERT INTO [Employee] VALUES(2,'Doja','Cat','1991-01-02','F','2017-11-24','69');
--ALTER TABLE [Emlpoyee] ADD [Age] INT;
SELECT [FirstName],[DateOfBirth],[Gender] FROM [Employee];

CREATE TABLE [Product](
[Id] INT PRIMARY KEY NOT NULL,
[Code] NVARCHAR(50),
[Name] NVARCHAR(100),
[Description] NVARCHAR(MAX),
[Weight] DECIMAL(18,2),
[Price] DECIMAL(18,2),
[Cost] DECIMAL(18,2),
);
SELECT * FROM [Product];
INSERT INTO [Product] VALUES(11,'2241','Bitolsko-Mleko','Mlechen proizvod',15.22,66.12,100);
INSERT INTO [Product] VALUES(111,'33245','Pechenica','Meso',33.12,106.12,199);

CREATE TABLE [Customer](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(100) NOT NULL,
[AccountNumber] NVARCHAR(50),
[City] NVARCHAR(100),
[RegionName] NVARCHAR(100),
[CustomerSize] NVARCHAR(10),
[PhoneNumber] NVARCHAR(20),
[isActive] bit,
);
SELECT * FROM [Customer];
INSERT INTO [Customer] VALUES(10,'Customer1',56,'New York','New York','10','192-192-192','true');

CREATE TABLE [Order](
[Id] BIGINT NOT NULL,
[OrderDate] DATETIME,
[Status] SMALLINT,
[BusinessEntityId] INT,
[CustomerId] INT,
[EmployeeId] INT,
[TotalPrice] DECIMAL(18,2),
[Comment] NVARCHAR(MAX),
);
SELECT * FROM [Order];
INSERT INTO [Order] VALUES(1000,'2022-05-24',4,15,2,55,155.35,'The order was on time.');

CREATE TABLE[OrderDetails](
[Id] BIGINT NOT NULL,
[OrderId] BIGINT,
[ProductId] INT,
[Quantity] INT,
[Price] DECIMAL(18,2),
);
INSERT INTO[OrderDetails] VALUES(23356,771,5,15,335.11235);
SELECT * FROM [OrderDetails];