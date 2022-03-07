SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[exams_delete] @exID int
as
delete from exams 
WHERE exam_ID = @exID;
GO
