SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Department_procInsert] @Dept_ID int , @Dept_Name varchar(50) ,@Manager_ID int
as
insert into department
values(@Dept_ID,@Dept_Name,@Manager_ID)
GO
