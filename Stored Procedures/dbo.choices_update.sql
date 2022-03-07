SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[choices_update] @chID INT, @desc VARCHAR(max), @iscorrect CHAR(1), @q_id INT
AS
	UPDATE choices
	SET choice_desc= @desc,
		isCorrect = @iscorrect,
		q_ID = @q_id
	WHERE choice_ID = @chID
GO
