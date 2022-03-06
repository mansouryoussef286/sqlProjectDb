CREATE TABLE [dbo].[topics]
(
[topic_ID] [int] NOT NULL,
[topic_name] [varchar] (50) COLLATE Arabic_CI_AS NOT NULL,
[course_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[topics] ADD CONSTRAINT [PK_topics] PRIMARY KEY CLUSTERED ([topic_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[topics] ADD CONSTRAINT [FK_topics_courses] FOREIGN KEY ([course_ID]) REFERENCES [dbo].[courses] ([c_ID])
GO
