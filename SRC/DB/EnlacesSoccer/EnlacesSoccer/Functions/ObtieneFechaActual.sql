
ALTER FUNCTION [dbo].[ObtieneFechaActual] ()
RETURNS SmalldateTime AS  
BEGIN 
return convert(char(20), GETDATE(),120)
END

