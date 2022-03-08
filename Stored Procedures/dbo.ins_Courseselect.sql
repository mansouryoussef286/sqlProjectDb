SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[ins_Courseselect](@s_id int , @c_id int)
as 
select * from Inst_Courses 
where @s_id=inst_ID and @c_id=course_ID
GO
