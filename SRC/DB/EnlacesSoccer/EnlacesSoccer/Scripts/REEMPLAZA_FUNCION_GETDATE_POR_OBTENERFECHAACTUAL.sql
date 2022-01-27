--REEMPLAZA LA FUNCIÓN GETDATE() POR LA FUNCION PROPIA dbo.ObtieneFechaActual() LA CUAL OBTIENE FECHA CON HORA CENTRAL MEXICO
DECLARE C CURSOR FOR
SELECT sm.definition, so.type
FROM sys.objects so
JOIN sys.all_sql_modules sm ON sm.object_id = so.object_id
WHERE so.type IN ('P', 'V')
AND so.schema_id = SCHEMA_ID('dbo')
ORDER BY so.name

DECLARE @SQL NVARCHAR(MAX), @ojtype NVARCHAR(MAX)
OPEN C
	FETCH NEXT FROM C INTO @SQL, @ojtype
	WHILE @@FETCH_STATUS = 0 
		BEGIN
			IF @ojtype = 'P' SET @SQL = REPLACE(@SQL, 'CREATE PROCEDURE', 'ALTER PROCEDURE')
			IF @ojtype = 'P' SET @SQL = REPLACE(@SQL, 'create procedure', 'ALTER PROCEDURE')
			IF @ojtype = 'P' SET @SQL = REPLACE(@SQL, 'CREATE proc', 'ALTER PROCEDURE')
			IF @ojtype = 'P' SET @SQL = REPLACE(@SQL, 'create proc', 'ALTER PROCEDURE')
			IF @ojtype = 'V' SET @SQL = REPLACE(@SQL, 'CREATE VIEW' , 'ALTER VIEW')
			IF @ojtype = 'V' SET @SQL = REPLACE(@SQL, 'create view' , 'ALTER VIEW')
			SET @SQL = REPLACE(@SQL, 'GETDATE()', 'dbo.ObtieneFechaActual()')
			SET @SQL = REPLACE(@SQL, 'getdate()', 'dbo.ObtieneFechaActual()')
			EXEC (@SQL)
			FETCH NEXT FROM C INTO @SQL, @ojtype
		END
CLOSE C
DEALLOCATE C