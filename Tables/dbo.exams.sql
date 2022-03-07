CREATE TABLE [dbo].[exams]
(
[exam_ID] [int] NOT NULL IDENTITY(1, 1),
[course_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[exams] ADD CONSTRAINT [PK_exams] PRIMARY KEY CLUSTERED ([exam_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[exams] ADD CONSTRAINT [FK_exams_courses] FOREIGN KEY ([course_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
