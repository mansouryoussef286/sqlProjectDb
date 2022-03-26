SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [reports].[report_StudentExMA] @ExamID INT , @StudID INT
AS
	--Select question and student answer in table1
	DECLARE @t1 TABLE(Question VARCHAR(max) ,[Model Answer] VARCHAR(max), QID INT)
	INSERT INTO @t1 
	SELECT q.q_desc AS Question , c.choice_desc  , q.q_ID
	FROM  exams_questions eq 
	INNER JOIN questions q ON eq.q_ID = q.q_ID 
	INNER JOIN choices c ON q.q_ID = c.q_ID
	WHERE  eq.exam_ID= @ExamID AND eq.St_ID=@StudID AND c.isCorrect='T'
	--Select model answer in table2
	DECLARE @t2 table([Student Answer] VARCHAR(max), QID INT)
	INSERT INTO @t2
	SELECT c.choice_desc AS [Student Answer] , q.q_ID
	FROM  exams_questions eq 
	INNER JOIN questions q ON eq.q_ID = q.q_ID 
	INNER JOIN choices c ON q.q_ID = c.q_ID
	WHERE eq.exam_ID= @ExamID AND eq.St_ID=@StudID AND c.choice_ID= eq.answer
	--select 2 tables
	SELECT Question ,[Student Answer],[Model Answer] 
	FROM @t1 t1 left outer join @t2 t2
	ON t1.QID=t2.QID
GO
