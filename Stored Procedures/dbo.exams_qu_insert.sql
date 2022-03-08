SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[exams_qu_insert]  @exID int,@qID int, @answer int,@stdID int
as 
insert into exams_questions(exam_ID,q_ID,answer,St_ID)
values
(@exID,@qID,@answer,@stdID)
GO
