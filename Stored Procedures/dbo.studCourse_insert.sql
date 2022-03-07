SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[studCourse_insert] @st_id int , @course_id int 
as
insert into stud_courses values(@st_id,@course_id)
GO
