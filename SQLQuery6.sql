
CREATE PROCEDURE [dbo].[test] (
	@username nvarchar(50),
	@weight int,
	@date datetime)
AS
BEGIN 

UPDATE [dbo].[UserInfo]
SET
weight = @weight,
date = @date



END