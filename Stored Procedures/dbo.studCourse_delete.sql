SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[studCourse_delete] @st_id int 
as
delete from stud_courses where stud_ID=@st_id
GO
