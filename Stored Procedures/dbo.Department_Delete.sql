SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Department_Delete] @Col_Name VARCHAR(15) , @Value NVARCHAR(50) 
AS
	BEGIN TRY
		IF @Col_Name='dept_name'
		DELETE FROM department WHERE dept_name = @Value;
		ELSE IF @Col_Name='dept_ID'  
		DELETE FROM department WHERE dept_ID = @Value;
		ELSE IF @Col_Name='manager_ID' 
		DELETE FROM department WHERE manager_ID = @Value;
		ELSE 
		DELETE FROM department;
		IF @@ROWCOUNT>0 RETURN 200; --indicate to department is deleted
		ELSE RETURN 0; --indicate to no department is deleted
	END TRY
	BEGIN CATCH
		RETURN 400; --indicate to there is error in delete
	END CATCH
GO
