SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[ins_courseDelete](@s_id int , @c_id int)
as
delete from Inst_Courses where inst_ID=@s_id and course_ID=@c_id
GO
