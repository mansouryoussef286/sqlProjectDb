CREATE TABLE [dbo].[questions]
(
[q_ID] [int] NOT NULL,
[q_desc] [varchar] (max) COLLATE Arabic_CI_AS NOT NULL,
[q_type] [varchar] (10) COLLATE Arabic_CI_AS NOT NULL,
[c_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[questions] ADD CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED ([q_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[questions] ADD CONSTRAINT [FK_questions_courses] FOREIGN KEY ([c_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
