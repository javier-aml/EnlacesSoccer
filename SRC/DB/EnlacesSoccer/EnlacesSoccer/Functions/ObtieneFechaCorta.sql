

ALTER FUNCTION [dbo].[ObtieneFechaCorta] (@Fecha Smalldatetime)
RETURNS SmalldateTime AS  
BEGIN 
return convert(char(20), @Fecha,112)
END


