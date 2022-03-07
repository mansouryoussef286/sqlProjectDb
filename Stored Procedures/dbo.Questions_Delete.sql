SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[Questions_Delete] ******/
CREATE PROC [dbo].[Questions_Delete] @QID int
AS
	BEGIN TRY
		DELETE FROM questions WHERE q_ID = @QID;
		IF @@ROWCOUNT>0 RETURN 200; --indicate to department is deleted
		ELSE RETURN 0; --indicate to no department is deleted
	END TRY
	BEGIN CATCH
		RETURN 400; --indicate to there is error in delete
	END CATCH
GO
