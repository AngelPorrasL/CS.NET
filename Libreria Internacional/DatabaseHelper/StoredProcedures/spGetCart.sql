USE [Libreria]
GO
/****** Object:  StoredProcedure [dbo].[spGetCart]    Script Date: 26/4/2023 15:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[spGetCart] 
	@email VARCHAR(50)
AS
BEGIN
	SELECT * 
	FROM BuyBooks y
		INNER JOIN Books b
		ON y.bookId = b.id
	WHERE email = @email
END
