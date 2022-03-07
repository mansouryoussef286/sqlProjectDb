SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[topic_update] @topic_id int, @topic_name varchar(20) ,@course_id int
as
update topics set course_ID=@course_id,topic_name=@topic_name
where topic_ID=@topic_id
GO
