SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Questions_Insert] @Ques_ID INT, @Ques_Desc VARCHAR(80) ,@Ques_Type VARCHAR(10) , @Course_ID int
AS
	BEGIN TRY
		INSERT INTO questions
		VALUES(@Ques_ID, @Ques_Desc ,@Ques_Type, @Course_ID);
		RETURN  200;
	END TRY
	BEGIN CATCH
		RETURN  400;
	END CATCH
GO
