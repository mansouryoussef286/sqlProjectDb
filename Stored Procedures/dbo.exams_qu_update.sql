SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[exams_qu_update] @exID int,@qID int, @answer varchar(50),@stdID int

as
update exams_questions
set exam_ID = @exID, q_ID = @qID, answer = @answer,St_ID = @stdID 
where exam_ID = @exID;


GO
