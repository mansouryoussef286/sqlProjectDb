SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[exams_update]   @exID int,@courseId int	
as
update exams 
set  course_ID = @courseId
where exam_ID = @exID;
GO
