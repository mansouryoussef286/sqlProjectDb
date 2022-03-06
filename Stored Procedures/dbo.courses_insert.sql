SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[courses_insert] @cID int, @cName varchar(50)
as 
insert into courses
values
(@cID, @cName);
GO
