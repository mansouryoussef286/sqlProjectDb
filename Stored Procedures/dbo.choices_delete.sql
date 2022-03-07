SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[choices_delete] @ch_id INT
AS
	DELETE
	FROM choices
	WHERE choice_ID = @ch_id
GO
