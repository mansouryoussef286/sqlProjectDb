SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[AssignExamGrade] @examid int,@grade int
as
update exams set exam_grade = @grade where exam_ID = @examid
GO
