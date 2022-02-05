--SELECT * FROM TMPUpdateTorneo


SELECT  Nombre = 'EXEC SP_HELPTEXT ''dbo.' + OBJ.name + '''', obj.type
FROM Syscomments COM
inner join Sys.Objects OBJ ON (COM.id = OBJ.object_id)
WHERE COM.Text LIKE '%IdTorneo%'
AND OBJ.Type IN ('P','FN')
ORDER BY OBJ.Name