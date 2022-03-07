SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[report_examQandA] @examID int 
as
select q.q_ID, q.q_type, q.q_desc, c.choice_ID, c.choice_desc 
from exams_questions eq inner join questions q on eq.q_ID = q.q_ID
	inner join choices c on q.q_ID = c.q_ID 
where eq.exam_ID = @examID;
GO
