

INSERT INTO dbo.Arbitro (
	IdArbitro,
	Nombre,
	Telefono,
	Activo,
	JuegosArbitrados,
	FechaUltimaMod,
	NombrePcMod,
	ClaUsuarioMod
) SELECT 	IdArbitro = 1,
	Nombre = 'Felipe Ramos Rizo',
	Telefono = '',
	Activo = 1,
	JuegosArbitrados = 1,
	FechaUltimaMod = GETDATE(),
	NombrePcMod = HOST_NAME(),
	ClaUsuarioMod = 0
UNION 
SELECT 	IdArbitro = 2,
	Nombre = 'Marco Antonio Rodríguez',
	Telefono = '',
	Activo = 1,
	JuegosArbitrados = 1,
	FechaUltimaMod = GETDATE(),
	NombrePcMod = HOST_NAME(),
	ClaUsuarioMod = 0	
	UNION 
SELECT 	IdArbitro = 3,
	Nombre = 'Armando Archundia',
	Telefono = '',
	Activo = 1,
	JuegosArbitrados = 3,
	FechaUltimaMod = GETDATE(),
	NombrePcMod = HOST_NAME(),
	ClaUsuarioMod = 0	
UNION 
SELECT 	IdArbitro = 4,
	Nombre = 'Antonio Marrufo',
	Telefono = '',
	Activo = 1,
	JuegosArbitrados = 2,
	FechaUltimaMod = GETDATE(),
	NombrePcMod = HOST_NAME(),
	ClaUsuarioMod = 0		