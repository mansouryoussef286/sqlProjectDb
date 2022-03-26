SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[ExamCoursesStudents] @CID INT , @SID INT
AS
	SELECT es.Exam_ID
	FROM Exam_Student es
	inner join exams e on es.Exam_ID=e.exam_ID
	WHERE e.course_ID=@CID and es.St_ID=@SID and es.st_grade is null
GO
