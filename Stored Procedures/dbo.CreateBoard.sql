SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[CreateBoard] @GameID INT,
							@Width INT,
							@Height INT
AS
BEGIN

--	INSERT INTO GameBoard (GameID, Colour, Active, PlayerID, Label, Above,
--				Below, ToLeft, ToRight, AboveLeft, AboveRight, BelowLeft, BelowRight)
	SELECT TOP (@Width * @Height) @GameID,
								'FFFFFF',
								1,
								0,
								'',
								CASE
									WHEN (Number - @Width) > 0 THEN (Number - @Width)
									ELSE 0
								END,
								CASE 
									WHEN (Number + @Width) < (@Width * @Height) THEN (Number + @Width)
									ELSE 0
								END,
								CASE
									WHEN ((Number - 1) > 0) AND (((Number - 1) % @Width) <> 0) THEN (Number - 1)
									ELSE 0
								END,
								CASE
									WHEN (Number < (@Width * @Height) AND ((Number % @Width) <> 0)) THEN (Number + 1)
									ELSE 0
								END,
								CASE
									WHEN ((Number - @Width) > 0) AND ((Number - 1) > 0) AND (((Number - 1) % @Width) <> 0) THEN (Number - (@Width + 1))
									ELSE 0
								END,
								CASE
									WHEN ((Number - @Width) > 0) AND ((Number < (@Width * @Height) AND ((Number % @Width) <> 0))) THEN (Number - (@Width - 1))
									ELSE 0
								END,
								CASE
									WHEN ((Number + @Width) < (@Width * @Height)) AND ((Number - 1) > 0) AND (((Number - 1) % @Width) <> 0) THEN (Number + (@Width - 1))
									ELSE 0
								END,
								CASE
									WHEN ((Number + @Width) < (@Width * @Height)) AND ((Number < (@Width * @Height) AND ((Number % @Width) <> 0))) THEN (Number + (@Width + 1))
									ELSE 0
								END	


	FROM Numbers
	ORDER BY Number ASC
	

END
GO
