CREATE TABLE [dbo].[instructor]
(
[inst_ID] [int] NOT NULL,
[inst_name] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[inst_username] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[inst_pw] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[instructor] ADD CONSTRAINT [PK_instructor] PRIMARY KEY CLUSTERED ([inst_ID]) ON [PRIMARY]
GO
