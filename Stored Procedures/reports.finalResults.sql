SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [reports].[finalResults](@std_id int)
as
select xs.Exam_ID , st_grade , c_name  from Exam_Student as xs  , exams as x ,courses as c
where c.c_ID=x.course_ID and x.exam_ID=xs.Exam_ID and xs.St_ID=@std_id
GO
