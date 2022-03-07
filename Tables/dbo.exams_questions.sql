CREATE TABLE [dbo].[exams_questions]
(
[exam_ID] [int] NOT NULL,
[q_ID] [int] NOT NULL,
[answer] [int] NULL,
[St_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[exams_questions] ADD CONSTRAINT [PK_exams_questions] PRIMARY KEY CLUSTERED ([exam_ID], [q_ID], [St_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[exams_questions] ADD CONSTRAINT [FK_exams_questions_exams] FOREIGN KEY ([exam_ID]) REFERENCES [dbo].[exams] ([exam_ID])
GO
ALTER TABLE [dbo].[exams_questions] ADD CONSTRAINT [FK_exams_questions_questions] FOREIGN KEY ([q_ID]) REFERENCES [dbo].[questions] ([q_ID])
GO
ALTER TABLE [dbo].[exams_questions] ADD CONSTRAINT [FK_exams_questions_students] FOREIGN KEY ([St_ID]) REFERENCES [dbo].[students] ([stud_ID])
GO
