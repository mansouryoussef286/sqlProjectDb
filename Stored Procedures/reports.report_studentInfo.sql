SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [reports].[report_studentInfo] @depID int
as 
select * from dbo.students
where dept_ID = @depID;
GO
