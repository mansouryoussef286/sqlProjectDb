SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [exams].[AssignExamStudent] @examid int,@stdID int
as
--insert info in exam-student table
insert into Exam_Student (St_ID, Exam_ID)
values(@stdID, @examid)
--insert student in exam-questions table
insert into exams_questions(exam_ID, q_ID, st_ID)
select @examID, q_ID, @stdID
from exams_questions where exam_ID = @examID and St_ID =0;
GO
