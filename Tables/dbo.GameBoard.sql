CREATE TABLE [dbo].[GameBoard]
(
[ID] [int] NULL,
[GameInstanceID] [int] NULL,
[Colour] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NULL,
[PlayerID] [int] NULL,
[Label] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Row] [int] NULL,
[Column] [int] NULL,
[Above] [int] NULL,
[Below] [int] NULL,
[ToLeft] [int] NULL,
[ToRight] [int] NULL,
[AboveLeft] [int] NULL,
[AboveRight] [int] NULL,
[BelowLeft] [int] NULL,
[BelowRight] [int] NULL
) ON [PRIMARY]
GO
