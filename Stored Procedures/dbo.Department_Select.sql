SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
----------------------------------------------------------------------------------------------
/****** Object:  StoredProcedure [dbo].[Department_procSelect] ******/
CREATE PROC [dbo].[Department_Select] 
AS
	--know number of retreived rows
	DECLARE @Rows_Number INT;
	SELECT @Rows_Number=COUNT(*) 
	FROM  department d
	--Show all data of Department
	SELECT *
	FROM department d
	--Check if there are rows or not
	IF @Rows_Number = 0 RETURN 400; --indicate to no data retreived
	ELSE RETURN 200; --indicate to there are retrieved rows
GO
