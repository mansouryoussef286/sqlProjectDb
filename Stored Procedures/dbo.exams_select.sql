SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[exams_select] @exID int
as 
select * from exams
where exam_ID = @exID;


GO
