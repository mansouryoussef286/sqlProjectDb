SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[topic_delete] @topic_id int
as
delete from topics where topic_ID=@topic_id
GO
