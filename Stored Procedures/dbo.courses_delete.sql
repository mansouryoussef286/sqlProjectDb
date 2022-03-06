SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[courses_delete] @cID int
as
delete from courses 
where c_ID = @cID; 
GO
