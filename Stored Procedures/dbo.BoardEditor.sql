SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[BoardEditor] @GameInstanceID INT,
							@ID INT,
							@Action NVARCHAR(50)
AS
BEGIN

	IF @Action = 'EnableDisable'
	BEGIN

		UPDATE dbo.GameBoard
		SET Active = CASE Active WHEN 1 THEN 0 ELSE 1 END
		WHERE GameInstanceID = @GameInstanceID
			AND ID = @ID
	
	END

	IF @Action = 'WallTop'
	BEGIN

		UPDATE dbo.GameBoard
		SET WallUp = CASE WallUp WHEN 1 THEN 0 ELSE 1 END
		WHERE GameInstanceID = @GameInstanceID
			AND ID = @ID

		UPDATE dbo.GameBoard
		SET WallDown = CASE WallDown WHEN 1 THEN 0 ELSE 1 END
		WHERE GameInstanceID = @GameInstanceID
			AND Below = @ID
	
	END


	SELECT *
	FROM GameBoard
	WHERE GameInstanceID = @GameInstanceID

END
GO
