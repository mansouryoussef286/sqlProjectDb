CREATE TABLE [dbo].[students]
(
[stud_ID] [int] NOT NULL,
[stud_Fname] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[stud_Lname] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[dept_ID] [int] NULL,
[stud_Username] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[stud_pw] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[students] ADD CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED ([stud_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_students] ON [dbo].[students] ([stud_Username]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[students] ADD CONSTRAINT [FK_students_department] FOREIGN KEY ([dept_ID]) REFERENCES [dbo].[department] ([dept_ID])
GO
