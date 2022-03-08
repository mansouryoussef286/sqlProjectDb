SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[exams_insert]  @exID int,@courseId int
as 

insert into exams(exam_ID,course_ID)
VALUES
(@exID, @courseId);
GO
