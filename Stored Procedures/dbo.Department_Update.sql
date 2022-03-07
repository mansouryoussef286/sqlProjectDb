SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Department_Update] @Col_Name varchar(15) , @Old_Value nvarchar(50) , @New_Value nvarchar(50)
AS
	BEGIN TRY
		if @Col_Name='dept_name'
		update department  set dept_name  = @New_Value where dept_name  = @Old_Value;
		else if @Col_Name='dept_ID'  
		update department  set dept_ID    = @New_Value where dept_ID    = @Old_Value;
		else if @Col_Name='manager_ID' 
		update department  set manager_ID = @New_Value where manager_ID = @Old_Value;
		RETURN 200;
	END TRY
	BEGIN CATCH
		RETURN 400;
	END CATCH
GO
