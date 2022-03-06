CREATE TABLE [dbo].[department]
(
[dept_ID] [int] NOT NULL,
[dept_name] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[manager_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[department] ADD CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED ([dept_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[department] ADD CONSTRAINT [FK_department_instructor] FOREIGN KEY ([manager_ID]) REFERENCES [dbo].[instructor] ([inst_ID])
GO
