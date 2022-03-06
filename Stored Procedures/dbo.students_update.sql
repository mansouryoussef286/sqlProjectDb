SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[students_update] @stdID int, @stdFname varchar(50), @stdLname varchar(50), 
	@deptID int, @username varchar(50), @pw varchar(50)
as
update students 
set stud_ID = @stdID, stud_Fname = @stdFname, stud_Lname = @stdLname, 
	dept_ID = @deptID, stud_Username = @username, stud_pw = @pw
where stud_ID = @stdID; 
GO
