SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[choices_insert] @chID INT, @desc VARCHAR(max), @iscorrect CHAR(1), @q_id INT
AS
	INSERT INTO instructor
	VALUES (@chID, @desc, @iscorrect, @q_id)
GO
