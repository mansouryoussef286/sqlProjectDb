CREATE TABLE [dbo].[Dept_Courses]
(
[dept_ID] [int] NOT NULL,
[Crs_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dept_Courses] ADD CONSTRAINT [PK_Dept_Courses] PRIMARY KEY CLUSTERED ([dept_ID], [Crs_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dept_Courses] ADD CONSTRAINT [FK_Dept_Courses_courses] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
ALTER TABLE [dbo].[Dept_Courses] ADD CONSTRAINT [FK_Dept_Courses_department] FOREIGN KEY ([dept_ID]) REFERENCES [dbo].[department] ([dept_ID])
GO
