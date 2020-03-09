USE [DentalOffice]
GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddEmployee]
	@lastName nvarchar(200),
	@firstName nvarchar(200),
	@middleName nvarchar(200),
	@dateOfBirth datetime2,
	@dateOfEmployment datetime2,
	@note nvarchar(max),
	@postID int,
	@id INT OUTPUT
AS
BEGIN
	INSERT INTO Employees(LastName, FirstName, MiddleName, DateOfBirth, DateOfEmployment, Note, PostID)
	Values (@lastName, @firstName, @middleName, @dateOfBirth, @dateOfEmployment, @note, @postID)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddFile]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddFile]
	@type nvarchar(50),
	@name nvarchar(250),
	@content varbinary(max),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Files(Type, Name, Content)
	Values (@type, @name, @content)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddFileForEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddFileForEmployee]
	@employeeID int,
	@fileID int

AS
BEGIN
	INSERT INTO employee_file(employeeID, fileID)
	Values (@employeeID, @fileID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddFileForNews]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddFileForNews]
	@newsID int,
	@fileID int

AS
BEGIN
	INSERT INTO news_file(newsID, fileID)
	VALUES (@newsID, @fileID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddFileForPage]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddFileForPage]
	@pageID int,
	@fileID int

AS
BEGIN
	INSERT INTO page_file(pageID, fileID)
	VALUES (@pageID, @fileID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddNews]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddNews]
	@title nvarchar(200),
	@date datetime2,
	@content nvarchar(max),
	@author int,
	@id int OUTPUT
AS
BEGIN
	INSERT INTO News(Title, Date, Content, Author)
	Values (@title, @date, @content, @author)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddPage]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddPage]
	@url nvarchar(max),
	@title nvarchar(200),
	@content nvarchar(max),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Pages(URL, Title, Content)
	Values (@url, @title, @content)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddPatient]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddPatient]
	@lastName nvarchar(200),
	@firstName nvarchar(200),
	@middleName nvarchar(200),
	@phone nvarchar(50),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Patients(LastName, FirstName, MiddleName, Phone)
	Values (@lastName, @firstName, @middleName, @phone)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddPost]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddPost]
	@title nvarchar(200),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Posts(Title)
	Values (@title)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddRecord]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddRecord]
	@date datetime2,
	@patientID int,
	@employeeID int,
	@comment nvarchar(max),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Records(Date, PatientID, EmployeeID, Comment)
	Values (@date, @patientID, @employeeID, @comment)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddRole]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddRole]
	@title nvarchar(100),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Roles(Title)
	Values (@title)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddRoleForUser]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddRoleForUser]
	@userID int,
	@roleID int

AS
BEGIN
	INSERT INTO user_role(userID, roleID)
	Values (@userID, @roleID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddSpecialty]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddSpecialty]
	@title nvarchar(200),
	@category nvarchar(200),
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Specialties(Title, Category)
	Values (@title, @category)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddSpecialtyForEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddSpecialtyForEmployee]
	@employeeID int,
	@specialtyID int

AS
BEGIN
	INSERT INTO employee_specialty(employeeID, specialtyID)
	VALUES (@employeeID, @specialtyID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddUser]
	@login nvarchar(200),
	@password nvarchar(32),
	@email nvarchar(max),
	@registrationDate datetime2,
	@photo varbinary(max),
	@employeeID int, 
	@patientID int,
	@id INT OUTPUT
AS
BEGIN
	INSERT INTO Users (Login, Password, Email, RegistrationDate, Photo, EmployeeID, PatientID)
	Values (@login, @password, @email, @registrationDate, @photo, @employeeID, @patientID)

	set @id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployeeById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteEmployeeById]
@id int
AS
BEGIN
	DELETE FROM Employees
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFileById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFileById]
@id int
AS
BEGIN
	DELETE FROM Files
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFileForEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFileForEmployee]
@employeeID int,
@fileID int
AS
BEGIN
	DELETE FROM employee_file
	WHERE employeeID = @employeeID AND fileID = @fileID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFileForNews]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFileForNews]
@newsID int,
@fileID int
AS
BEGIN
	DELETE FROM news_file
	WHERE newsID = @newsID AND fileID = @fileID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFileForPage]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFileForPage]
@pageID int,
@fileID int
AS
BEGIN
	DELETE FROM page_file
	WHERE pageID = @pageID AND fileID = @fileID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteNewsById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteNewsById]
@id int
AS
BEGIN
	DELETE FROM News
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePageById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePageById]
@id int
AS
BEGIN
	DELETE FROM Pages
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePatientById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePatientById]
@id int
AS
BEGIN
	DELETE FROM Patients
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePostById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePostById]
@id int
AS
BEGIN
	DELETE FROM Posts
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRecordById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteRecordById]
@id int
AS
BEGIN
	DELETE FROM Records
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRoleById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteRoleById]
@id int
AS
BEGIN
	DELETE FROM Roles
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRoleForUser]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteRoleForUser]
@userID int,
@roleID int
AS
BEGIN
	DELETE FROM user_role 
	WHERE userID = @userID AND roleID = @roleID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSpecialtyById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteSpecialtyById]
@id int
AS
BEGIN
	DELETE FROM Specialties
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSpecialtyForEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSpecialtyForEmployee]
@employeeID int,
@specialtyID int
AS
BEGIN
	DELETE FROM employee_specialty 
	WHERE employeeID = @employeeID AND specialtyID = @specialtyID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUserById]
@id int
AS
BEGIN
	DELETE FROM Users
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployees]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllEmployees]
	
AS
BEGIN
	SELECT ID, LastName, FirstName, MiddleName, DateOfBirth, DateOfEmployment, Note, PostID
	FROM Employees 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFiles]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllFiles]
	
AS
BEGIN
	SELECT ID, Type, Name, Content
	FROM Files
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFilesByEmployeeId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllFilesByEmployeeId]
@id INT
AS
BEGIN
	SELECT f.ID, f.Type, f.Name, f.Content FROM Files as f
	INNER JOIN employee_file AS ef ON ef.fileID = f.ID
	WHERE ef.employeeID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFilesByNewsId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllFilesByNewsId]
@id INT
AS
BEGIN
	SELECT f.ID, f.Type, f.Name, f.Content FROM Files as f
	INNER JOIN news_file AS nf ON nf.fileID = f.ID
	WHERE nf.newsID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFilesByPageId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllFilesByPageId]
@id INT
AS
BEGIN
	SELECT f.ID, f.Type, f.Name, f.Content FROM Files as f
	INNER JOIN page_file AS pf ON pf.fileID = f.ID
	WHERE pf.pageID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllNews]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllNews]
	
AS
BEGIN
	SELECT ID, Title, Date, Content, Author
	FROM News
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPages]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllPages]
	
AS
BEGIN
	SELECT ID, URL, Title, Content
	FROM Pages
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPatients]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllPatients]
	
AS
BEGIN
	SELECT ID, LastName, FirstName, MiddleName, Phone
	FROM Patients
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPosts]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllPosts]
	
AS
BEGIN
	SELECT ID, Title
	FROM Posts
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRecords]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllRecords]
	
AS
BEGIN
	SELECT ID, Date, PatientID, EmployeeID, Comment
	FROM Records
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRecordsBetweenDates]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllRecordsBetweenDates] 
	@dateStart datetime2,
	@dateEnd datetime2
AS
BEGIN
	SELECT ID, Date, PatientID, EmployeeID, Comment
	FROM Records WHERE Date between @dateStart and @dateEnd
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRecordsOnDate]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GetAllRecordsOnDate]
	@date datetime2
AS
BEGIN
	SELECT ID, Date, PatientID, EmployeeID, Comment
	FROM Records
	WHERE  Date between dateadd(day,-1, @date) and dateadd(day,+1, @date)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRecordsStartingFromDate]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GetAllRecordsStartingFromDate]
	@date datetime2
AS
BEGIN
	SELECT ID, Date, PatientID, EmployeeID, Comment
	FROM Records WHERE Date >= @date
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRoles]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllRoles]
	
AS
BEGIN
	SELECT ID, Title
	FROM Roles
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRolesByUserId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllRolesByUserId]
@id INT
AS
BEGIN
	SELECT r.ID, r.Title FROM Roles as r
	INNER JOIN user_role AS ur ON ur.roleID = r.ID
	WHERE ur.userID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSpecialties]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GetAllSpecialties]

AS
BEGIN
SELECT ID, Title, Category FROM Specialties
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSpecialtiesByEmployeeId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAllSpecialtiesByEmployeeId] 
@id INT
AS
BEGIN
SELECT s.ID, s.Title, s.Category FROM Specialties as s
	INNER JOIN employee_specialty AS es ON es.specialtyID = s.ID
	WHERE es.employeeID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllUsers]
	
AS
BEGIN
	SELECT ID, Login, Password, Email, RegistrationDate, Photo, EmployeeID, PatientID
	FROM Users
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsersByRoleId]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllUsersByRoleId] 
	@id INT
AS
BEGIN
SELECT u.ID, u.Login, u.Password, u.Email, u.RegistrationDate, u.Photo, u.EmployeeID, u.PatientID
	FROM Users as u
	INNER JOIN user_role AS ur ON ur.userID = u.ID
	WHERE ur.roleID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeeById] 
@id INT
AS
BEGIN
SELECT LastName, FirstName, MiddleName, DateOfBirth, DateOfEmployment, Note, PostID
	FROM Employees WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetFileById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetFileById] 
@id INT
AS
BEGIN
SELECT Type, Name, Content
	FROM Files WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetNewsById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNewsById] 
@id INT
AS
BEGIN
SELECT Title, Date, Author, Content
	FROM News WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetPageById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPageById] 
@id INT
AS
BEGIN
SELECT URL, Title, Content
	FROM Pages WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetPatientById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPatientById] 
@id INT
AS
BEGIN
SELECT LastName, FirstName, MiddleName, Phone
	FROM Patients WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetPostById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPostById] 
@id INT
AS
BEGIN
SELECT Title
	FROM Posts WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetRecordById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRecordById] 
@id INT
AS
BEGIN
SELECT Date, PatientID, EmployeeID, Comment
	FROM Records WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetRoleById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRoleById] 
@id INT
AS
BEGIN
SELECT Title
	FROM Roles WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetSpecialtyById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSpecialtyById] 
@id INT
AS
BEGIN
SELECT Title, Category
	FROM Specialties WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserById] 
@id INT
AS
BEGIN
SELECT Login, Password, Email, RegistrationDate, Photo, EmployeeID, PatientID
	FROM Users WHERE (ID = @id)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEmployee] 
	@id INT,
	@lastName nvarchar(200),
	@firstName nvarchar(200),
	@middleName nvarchar(200),
	@dateOfBirth datetime2,
	@dateOfEmployment datetime2,
	@Note nvarchar(max),
	@postID int
	
AS
BEGIN
	
	UPDATE Employees 
	SET 
	lastName = @lastName,
	firstName = @firstName,
	middleName = @middleName,
	dateOfBirth = @dateOfBirth,
	dateOfEmployment = @dateOfEmployment,
	note = @Note,
	postID = @postID
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateFile]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFile]
	@id INT,
	@type nvarchar(50),
	@name nvarchar(250),
	@content varbinary(max)
	
AS
BEGIN
	
	UPDATE Files
	SET 
	
	Type = @type,
	Name = @name,
	Content = @content
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNews]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateNews]
	@id INT,
	@title nvarchar(200),
	@date datetime2,
	@content nvarchar(max),
	@author int
	
AS
BEGIN
	
	UPDATE News
	SET 
	
	Title = @title,
	Date = @date,
	Content = @content,
	Author = @author
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePage]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePage]
	@id INT,
	@url nvarchar(max),
	@title nvarchar(200),
	@content nvarchar(max)
	
AS
BEGIN
	
	UPDATE Pages
	SET 
	
	URL = @url,
	Title = @title,
	Content = @content
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePatient]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePatient] 
	@id INT,
	@lastName nvarchar(200),
	@firstName nvarchar(200),
	@middleName nvarchar(200),
	@phone nvarchar(50)
	
AS
BEGIN
	
	UPDATE Patients 
	SET 
	LastName = @lastName,
	FirstName = @firstName,
	MiddleName = @middleName,
	Phone = @phone	
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePost]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePost]
	@id INT,
	@title nvarchar(200)
	
AS
BEGIN
	
	UPDATE Posts
	SET 
	Title = @title
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRecord]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateRecord]
	@id INT,
	@date datetime2,
	@patientID int,
	@employeeID int,
	@comment nvarchar(max)
	
AS
BEGIN
	
	UPDATE Records 
	SET 
	
	Date = @date,
	PatientID = @patientID,
	EmployeeID = @employeeID,
	Comment = @comment
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateRole]
	@id INT,
	@title nvarchar(100)
	
AS
BEGIN
	
	UPDATE Roles
	SET 
	Title = @title
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSpecialty]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateSpecialty]
	@id INT,
	@title nvarchar(200),
	@category nvarchar(200)
	
AS
BEGIN
	
	UPDATE Specialties 
	SET 
	
	Title = @title,
	Category = @category
	WHERE ID = @id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 09.03.2020 15:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUser] 
	@id INT,
	@login nvarchar(200),
	@password nvarchar(200),
	@email nvarchar(max),
	@registrationDate datetime2,
	@photo varbinary(max),
	@employeeID int,
	@patientID int
	
AS
BEGIN
	
	UPDATE Users 
	SET Login = @login, 
	Password = @password, 
	Email = @email,
	RegistrationDate = @registrationDate,
	Photo = @photo,
	EmployeeID = @employeeID,
	PatientID = @patientID
	WHERE ID = @id

END
GO
