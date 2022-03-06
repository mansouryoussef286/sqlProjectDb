SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Department_procDelete] @Col_Name varchar(15) , @Value nvarchar(50) 
as
if @Col_Name='dept_name'
delete from department where dept_name = @Value
else if @Col_Name='dept_ID'  
delete from department where dept_ID = @Value
else if @Col_Name='manager_ID' 
delete from department where manager_ID = @Value
else 
delete from department
GO
