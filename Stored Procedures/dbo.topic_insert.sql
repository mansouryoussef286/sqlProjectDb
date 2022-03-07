SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[topic_insert] @topic_id int, @topic_name varchar(20) ,@course_id int
as
insert into topics values(@topic_id,@topic_name,@course_id)
GO
