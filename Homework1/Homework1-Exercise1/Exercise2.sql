CREATE TABLE [Student](
[Id] INT PRIMARY KEY NOT NULL,
[FirstName] NVARCHAR(50),
[LastName] NVARCHAR(50),
[DateOfBirth] DATE,
[EnrolledDate] DATE,
[Gender] NCHAR(1),
[NationalIdNumber] NVARCHAR(100),
[StudentCardNumber] NVARCHAR(100),
);
INSERT INTO [Student] VALUES(15,'Laze','Maze','2000-01-19','2024-04-10','M','1000','15180');
SELECT * FROM [Student];

CREATE TABLE[Course](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(100),
[Credit] BIGINT,
[AcademicYear] DATE,
[Semester] NVARCHAR(20),
);
INSERT INTO [Course] VALUES(50,'Web-Programming',399,'2021-10-20','Summer');
SELECT [Name],[Semester],[AcademicYear] FROM [Course];

CREATE TABLE[Teacher](
[Id] INT PRIMARY KEY NOT NULL,
[FirstName] NVARCHAR(50),
[LastName] NVARCHAR(50),
[DateOfBirth] DATE,
[AcademicRank] NVARCHAR(20),
[HireDate] DATE,
);
INSERT INTO [Teacher] VALUES(89,'Nora','Teacher','1984-11-09','Professor','2008-01-01');
INSERT INTO [Teacher] VALUES(55,'Suze','Math','1984-11-09','Professor','2008-01-01');
INSERT INTO [Teacher] VALUES(23,'Tanja','Biology','1984-11-09','Professor','2008-01-01');
SELECT * FROM [Teacher];
UPDATE[Teacher] SET[LastName] = 'Teachers';

CREATE TABLE[GradeDetails](
[Id] INT PRIMARY KEY NOT NULL,
[GradeId] INT,
[AchievementTypeId] INT,
[AchievementPoints] BIGINT,
[AchievementMaxPoints] NVARCHAR(100),
[AchievementDate] DATE,
);
INSERT INTO [GradeDetails]VALUES(29,5,10,88,100,'2005-01-03');
SELECT * FROM [GradeDetails];

CREATE TABLE[AChievementType](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50),
[Description] NVARCHAR(MAX),
[ParticipationRate] BIGINT,
);
INSERT INTO[AChievementType] VALUES(55,'B Category','Driving lessons',5000);
SELECT * FROM [AChievementType];

CREATE TABLE[Grade](
[Id] INT PRIMARY KEY NOT NULL,
[StudentId] INT NOT NULL,
[CourseId] INT NOT NULL,
[TeacherId] INT NOT NULL,
[Grade] INT,
[Comment] NVARCHAR(255),
[CreatedDate] DATE,
);
INSERT INTO[Grade]VALUES(12,1781,19992,88832,10,'Some random stuff bla bla bla','2011-09-13');
SELECT * FROM[Grade];