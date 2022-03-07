SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Questions_Update] @Col_Name VARCHAR(15) , @Old_Value NVARCHAR(50) , @New_Value NVARCHAR(50)
AS
	BEGIN TRY
		IF @Col_Name='q_ID'
		UPDATE questions  SET q_ID   = @New_Value WHERE q_ID   = @Old_Value;
		ELSE IF @Col_Name='q_desc'  
		UPDATE questions  SET q_desc = @New_Value WHERE q_desc = @Old_Value;
		ELSE IF @Col_Name='q_type' 
		UPDATE questions  SET q_type = @New_Value WHERE q_type = @Old_Value;
		ELSE IF @Col_Name='c_ID' 
		UPDATE questions  SET c_ID   = @New_Value WHERE c_ID   = @Old_Value;
		IF @@ROWCOUNT>0 RETURN 200; --indicate to department is deleted
		ELSE RETURN 0; --indicate to no department is deleted
	END TRY
	BEGIN CATCH
		RETURN 400;
	END CATCH
GO
