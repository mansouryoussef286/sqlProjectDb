SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[exams_qu_delete] @exID int
as
delete from exams_questions 
where exam_ID = @exID;


GO
