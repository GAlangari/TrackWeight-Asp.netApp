CREATE PROCEDURE [dbo].[addUserWeight] (
	@username nvarchar(50),
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