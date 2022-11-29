
CREATE PROCEDURE [dbo].[addUser] (

	@username nvarchar(50),
	@email nvarchar(50),
	@password nvarchar(50))
AS
BEGIN 

INSERT INTO [UserInfo] (
    username,
	email,
	password)
	
	VALUES (
		@username,
		@email,
		@password
	)
	END

