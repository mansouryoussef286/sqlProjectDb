CREATE TABLE [dbo].[courses]
(
[c_ID] [int] NOT NULL,
[c_name] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[courses] ADD CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED ([c_ID]) ON [PRIMARY]
GO
