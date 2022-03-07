SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[correctExam] @examID int, @stdID int
as
--declare the grade variable
declare @grade int = 0
--Cursor to loop on the exam answers to check 
declare @stAnswer int = 0, @qid int = 0, @modelAnswer int = 0
DECLARE answer_cursor CURSOR FOR   
select eq.answer ,eq.q_ID 
from exams_questions eq
where eq.exam_ID = @examID and eq.St_ID = @stdID 
  
OPEN answer_cursor  
FETCH NEXT FROM answer_cursor INTO @stAnswer, @qid  
IF @@FETCH_STATUS <> 0   
    PRINT 'done grading'       
  
WHILE @@FETCH_STATUS = 0  
BEGIN  
	--select the model answer
	select @modelAnswer = c.choice_ID
	from questions q inner join choices c on q.q_ID = c.q_ID
	where c.q_ID = @qid and c.isCorrect = 'T'
	--check if the student answer is the model answer
	if @stAnswer = @modelAnswer 
		set @grade = @grade + 1
	--fetch the next answer
    FETCH NEXT FROM answer_cursor INTO @stAnswer, @qid   
END  
--insert the grade to the exam students table
update Exam_Student
set st_grade = @grade
where St_ID = @stdID and Exam_ID = @examID

CLOSE answer_cursor  
DEALLOCATE answer_cursor 
GO
