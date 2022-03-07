SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[instructor_delete] @id INT
AS
	DELETE
	FROM instructor
	WHERE inst_ID = @id
GO
