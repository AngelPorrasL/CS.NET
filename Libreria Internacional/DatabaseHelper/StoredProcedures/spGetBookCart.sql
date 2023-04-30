USE [Libreria]
GO
/****** Object:  StoredProcedure [dbo].[spGetBookCart]    Script Date: 26/4/2023 15:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spGetBookCart] 
	@buybookId INT
AS
BEGIN
	SELECT * 
	FROM BuyBooks y		
	WHERE buybookId = @buybookId
END
