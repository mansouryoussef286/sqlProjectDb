SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[finalResult] (@std_id int)
as
select Exam_ID, st_grade from Exam_Student where @std_id=St_ID
GO
