SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[AssignExamStudent] @examid int,@stdID int
as
update exams set stud_ID = @stdID where exam_ID = @examid
GO
