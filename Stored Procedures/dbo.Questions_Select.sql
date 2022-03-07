SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Questions_Select] 
AS
	--know number of retreived rows
	DECLARE @Rows_Number INT;
	SELECT @Rows_Number=COUNT(*) 
	FROM  questions q
	--Show Description and type of Question
	SELECT *
	FROM questions q
	--Check if there are rows or not
	IF @Rows_Number = 0 RETURN 400; --indicate to no data retreived
	ELSE RETURN 200; --indicate to there are retrieved rows
GO
