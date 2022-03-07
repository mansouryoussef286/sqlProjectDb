SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[examAns] @examID INT, @stID INT, @q1 INT, @q2 INT, @q3 INT, @q4 INT, @q5 INT, @q6 INT,  @q7 INT,  @q8 INT,  @q9 INT, @q10 INT
AS

/*Create Cursor To Work on Each Question Seperately*/
	DECLARE c_question_choice CURSOR
	FOR
	--Works on each q_id per exam
	SELECT q_ID 
	FROM exams_questions
	WHERE exam_ID = @examID AND St_ID = @stID
	FOR UPDATE

	DECLARE @chID INT --assign paramter to ch_ID
	DECLARE @qID INT 
	DECLARE @counter INT = 1 --to work in loop on each parameter separately
	OPEN c_question_choice
	FETCH c_question_choice INTO @qID
	WHILE @@FETCH_STATUS = 0
		BEGIN
				IF(@counter = 1)
					SELECT @chID = @q1
				ELSE IF(@counter = 2)
					SELECT @chID = @q2
				ELSE IF(@counter = 3)
					SELECT @chID = @q3
				ELSE IF(@counter = 4)
					SELECT @chID = @q4
				ELSE IF(@counter = 5)
					SELECT @chID = @q5
				ELSE IF(@counter = 6)
					SELECT @chID = @q6
				ELSE IF(@counter = 7)
					SELECT @chID = @q7
				ELSE IF(@counter = 8)
					SELECT @chID = @q8
				ELSE IF(@counter = 9)
					SELECT @chID = @q9
				ELSE IF(@counter = 10)
					SELECT @chID = @q10
		
			
				UPDATE exams_questions
				SET answer = @chID
				WHERE CURRENT OF c_question_choice 
			SET @counter +=1
			FETCH c_question_choice INTO @qID
		END
	CLOSE c_question_choice
	DEALLOCATE c_question_choice
GO
