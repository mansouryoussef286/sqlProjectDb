CREATE TABLE [dbo].[stud_courses]
(
[stud_ID] [int] NOT NULL,
[course_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stud_courses] ADD CONSTRAINT [PK_stud_courses] PRIMARY KEY CLUSTERED ([stud_ID], [course_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stud_courses] ADD CONSTRAINT [FK_stud_courses_courses] FOREIGN KEY ([course_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
ALTER TABLE [dbo].[stud_courses] ADD CONSTRAINT [FK_stud_courses_students] FOREIGN KEY ([stud_ID]) REFERENCES [dbo].[students] ([stud_ID])
GO
