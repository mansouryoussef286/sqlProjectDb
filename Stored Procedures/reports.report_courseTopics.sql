SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [reports].[report_courseTopics] @cID INT
AS
	SELECT topic_name , topic_ID
	FROM topics
	WHERE course_ID = @cID
GO
