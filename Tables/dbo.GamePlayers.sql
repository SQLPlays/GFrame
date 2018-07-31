CREATE TABLE [dbo].[GamePlayers]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[GameID] [int] NULL,
[PlayerNumber] [tinyint] NULL,
[PlayerName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AI] [bit] NULL
) ON [PRIMARY]
GO
