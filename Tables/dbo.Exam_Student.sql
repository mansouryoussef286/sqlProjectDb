CREATE TABLE [dbo].[Exam_Student]
(
[St_ID] [int] NOT NULL,
[Exam_ID] [int] NOT NULL,
[st_grade] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam_Student] ADD CONSTRAINT [PK_Exam_Student] PRIMARY KEY CLUSTERED ([St_ID], [Exam_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam_Student] ADD CONSTRAINT [FK_Exam_Student_exams] FOREIGN KEY ([Exam_ID]) REFERENCES [dbo].[exams] ([exam_ID])
GO
ALTER TABLE [dbo].[Exam_Student] ADD CONSTRAINT [FK_Exam_Student_students] FOREIGN KEY ([St_ID]) REFERENCES [dbo].[students] ([stud_ID])
GO
