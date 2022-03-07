SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[instructor_insert] @id INT, @name VARCHAR(50), @username VARCHAR(50), @password VARCHAR(50) 
AS
	INSERT INTO instructor
	VALUES (@id, @name, @username, @password)
GO
