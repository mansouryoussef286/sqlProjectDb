SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[courses_update] @cID int, @cName varchar(50)
as
update courses 
set c_ID = @cID, c_name = @cName
where c_ID = @cID; 
GO
