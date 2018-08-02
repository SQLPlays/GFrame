CREATE TABLE [dbo].[GamePlayer]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[GameInstanceID] [int] NULL,
[PlayerNumber] [tinyint] NULL,
[PlayerName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
