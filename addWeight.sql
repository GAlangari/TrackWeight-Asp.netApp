CREATE PROCEDURE [dbo].[addWeight] (

	@weight int,
	@date datetime)
AS
BEGIN 

INSERT INTO [UserInfo] (

	weight,
	date)
	
	VALUES (
		@weight,
		@date 
	)
	END

