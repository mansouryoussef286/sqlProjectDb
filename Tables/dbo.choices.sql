CREATE TABLE [dbo].[choices]
(
[choice_ID] [int] NOT NULL,
[choice_desc] [varchar] (max) COLLATE Arabic_CI_AS NOT NULL,
[isCorrect] [char] (1) COLLATE Arabic_CI_AS NOT NULL,
[q_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[choices] ADD CONSTRAINT [PK_choices] PRIMARY KEY CLUSTERED ([choice_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[choices] WITH NOCHECK ADD CONSTRAINT [FK_choices_questions] FOREIGN KEY ([q_ID]) REFERENCES [dbo].[questions] ([q_ID])
GO
