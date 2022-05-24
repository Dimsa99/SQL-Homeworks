USE [master];

CREATE TABLE [BusinessEntity](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(100),
[Region] NVARCHAR(100),
[Zipcode] NVARCHAR(10),
[Size] NVARCHAR(10)
);
INSERT INTO [BusinessEntity]([Id],[Name],[Region],[Zipcode],[Size]) VALUES(1,'Coca-Cola','US','10','3');
INSERT INTO [BusinessEntity]([Id],[Name],[Region],[Zipcode],[Size]) VALUES(2,'Puma','Ger','56','7');

UPDATE [BusinessEntity] SET [Region] = 'Russia';
SELECT * FROM [BusinessEntity];
SELECT [Name], [Region], [Zipcode] FROM [BusinessEntity];