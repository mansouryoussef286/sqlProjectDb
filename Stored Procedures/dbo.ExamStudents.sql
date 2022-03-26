SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

Create PROC [dbo].[ExamStudents] @EID INT
AS
	SELECT s.stud_ID,CONCAT(s.stud_Fname,' ',s.stud_Lname) as FullName
	FROM students s 
	inner join Exam_Student e on s.stud_ID=e.St_ID
	WHERE e.Exam_ID=@EID
GO
