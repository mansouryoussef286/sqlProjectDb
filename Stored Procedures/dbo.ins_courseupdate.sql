SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[ins_courseupdate] (@s_id int ,@c_id int )
as
update Inst_Courses
set inst_ID=@s_id , course_ID=@c_id
GO
