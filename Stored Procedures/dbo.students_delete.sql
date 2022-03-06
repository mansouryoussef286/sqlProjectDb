SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[students_delete] @stdID int
as
delete from students 
where stud_ID = @stdID;
GO
