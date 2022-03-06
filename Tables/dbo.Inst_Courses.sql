CREATE TABLE [dbo].[Inst_Courses]
(
[inst_ID] [int] NOT NULL,
[course_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inst_Courses] ADD CONSTRAINT [PK_Inst_Courses] PRIMARY KEY CLUSTERED ([inst_ID], [course_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inst_Courses] ADD CONSTRAINT [FK_Inst_Courses_courses] FOREIGN KEY ([course_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
ALTER TABLE [dbo].[Inst_Courses] ADD CONSTRAINT [FK_Inst_Courses_instructor] FOREIGN KEY ([inst_ID]) REFERENCES [dbo].[instructor] ([inst_ID])
GO
