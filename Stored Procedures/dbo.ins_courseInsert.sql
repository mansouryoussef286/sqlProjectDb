SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[ins_courseInsert] @s_id int ,@c_id int
as
insert into Inst_Courses(inst_ID,course_ID)values (@s_id,@c_id)
GO
