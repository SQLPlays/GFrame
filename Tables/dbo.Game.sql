CREATE TABLE [dbo].[Game]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Board] [bit] NULL
) ON [PRIMARY]
GO
