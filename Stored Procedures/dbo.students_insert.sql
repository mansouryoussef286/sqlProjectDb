SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[students_insert] @stdID int, @stdFname varchar(50), @stdLname varchar(50), 
	@deptID int, @username varchar(50), @pw varchar(50)
as 
insert into students
values
(@stdID,@stdFname, @stdLname, @deptID, @username, @pw)
GO
