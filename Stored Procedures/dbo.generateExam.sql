SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[generateExam] @courseName varchar(50), @TFnum int, @mcqNum int
as
--get the course id
declare @courseID int
select @courseID = c.c_ID
from courses c
where c.c_name = @courseName
--insert the new exam
insert into exams (course_ID)
values(@courseID)
--selecting the exam id
declare @examID int
select @examID = max(exam_ID)
from exams
----selecting the questions for the exam
----inserting the exam into the exams table and exam-questions table
--true or false questions
insert into exams_questions(exam_ID, q_ID, St_ID)
select top(@TFnum) @examID, q.q_ID, 0
from questions q
where q.q_type = 'torf' and q.c_ID = @courseID
order by NEWID()
--mcq questions
insert into exams_questions(exam_ID, q_ID, St_ID)
select top(@mcqNum) @examID, q.q_ID, 0
from questions q
where q.q_type = 'mcq' and q.c_ID = @courseID
order by NEWID()
GO
