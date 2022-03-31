SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create proc [dbo].[dept_coursesInsert] @DID int ,@CID int
as
insert into Dept_Courses(dept_ID,Crs_ID)values (@DID,@CID)
GO
