SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[instructor_update] @id INT, @name VARCHAR(50), @username VARCHAR(50), @password VARCHAR(50)
AS
	UPDATE instructor
	SET inst_name = @name,
		inst_username = @username,
		inst_pw = @password
	WHERE inst_ID = @id
GO
