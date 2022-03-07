SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[studCourse_update] @st_id int , @course_id int 
as
update stud_courses set course_ID=@course_id
where stud_ID=@st_id
GO
