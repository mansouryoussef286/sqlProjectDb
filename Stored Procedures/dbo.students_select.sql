SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[students_select] @stdID int
as 
select * from students
where stud_ID = @stdID;
GO
