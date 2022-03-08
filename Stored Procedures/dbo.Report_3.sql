SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Report_3] @inst_Id int 
as
select courses.c_name,COUNT(stud_courses.stud_ID) as studentNo from courses inner join Inst_Courses
on courses.c_ID=Inst_Courses.course_ID inner join stud_courses on stud_courses.course_ID=courses.c_ID
where inst_ID=@inst_Id  group by courses.c_name
GO
