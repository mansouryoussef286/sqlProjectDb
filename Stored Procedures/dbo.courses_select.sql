SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[courses_select] @cID int
as
select * from courses
where c_ID = @cID;
GO
