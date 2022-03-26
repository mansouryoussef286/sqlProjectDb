SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [reports].[report_studentInfo] @depID int
as 
select concat(s.stud_Fname,' ',s.stud_Lname) as FullName , s.stud_ID , c.c_name
from stud_courses sc 
inner join dbo.students s on s.stud_ID = sc.stud_ID
inner join dbo.courses c on c.c_ID=sc.course_ID
where dept_ID = @depID;
GO
