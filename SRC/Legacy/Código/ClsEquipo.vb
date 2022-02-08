Public Class ClsEquipo
    Implements System.ComponentModel.IDataErrorInfo

    ''' <summary>
    ''' Clase para el manejo de los equipos
    ''' </summary>
    ''' <remarks> ||| 29-08-2011 | Jorge Alberto Sanchez |||</remarks>
    Private vIdEquipo As Integer
    Public Property idEquipo() As Integer
        Get
            Return Me.vIdEquipo
        End Get
        Set(ByVal value As Integer)
            Me.vIdEquipo = value
        End Set
    End Property

    Private vIdLiga As Integer
    Public Property idLiga() As Integer
        Get
            Return Me.vIdLiga
        End Get
        Set(ByVal value As Integer)
            Me.vIdLiga = value
        End Set
    End Property

    Private vNombre As String
    Public Property nombre() As String
        Get
            Return Me.vNombre
        End Get
        Set(ByVal value As String)
            Me.vNombre = value
        End Set
    End Property

    Private vActivo As Integer
    Public Property activo() As Integer
        Get
            Return Me.vActivo
        End Get
        Set(ByVal value As Integer)
            Me.vActivo = value
        End Set
    End Property

    Private vFechaUltimaMod As DateTime
    Public Property fechaUltimaMod() As DateTime
        Get
            Return Me.vFechaUltimaMod
        End Get
        Set(ByVal value As DateTime)
            Me.vFechaUltimaMod = value
        End Set
    End Property

    Private vNombrePcMod As String
    Public Property nombrePcMod() As String
        Get
            Return Me.vNombrePcMod
        End Get
        Set(ByVal value As String)
            Me.vNombrePcMod = value
        End Set
    End Property

    Private vClaUsuarioMod As Integer
    Public Property claUsuarioMod() As Integer
        Get
            Return Me.vClaUsuarioMod
        End Get
        Set(ByVal value As Integer)
            Me.vClaUsuarioMod = value
        End Set
    End Property


    Private vIdJugador As Integer
    Public Property idJugador() As Integer
        Get
            Return Me.vIdJugador
        End Get
        Set(ByVal value As Integer)
            Me.vIdJugador = value
        End Set
    End Property


    Private vNumero As Integer
    Public Property numero() As Integer
        Get
            Return vNumero
        End Get
        Set(ByVal value As Integer)
            vNumero = value
        End Set
    End Property


    Private vIdTorneo As Integer
    Public Property idTorneo() As Integer
        Get
            Return Me.vIdTorneo
        End Get
        Set(ByVal value As Integer)
            Me.vIdTorneo = value
        End Set
    End Property

    Public Sub registrar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("equipoSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@sNombre", Me.nombre)
        comm.Parameters.AddWithValue("@nActivo", Me.activo)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)

    End Sub
    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("equipoSu")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@sNombre", Me.nombre)
        comm.Parameters.AddWithValue("@nActivo", Me.activo)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Function consultar(activo As Integer) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarEquipos")
        comm.CommandType = CommandType.StoredProcedure
        'comm.Parameters.AddWithValue("@pnIdLiga", IdLiga)
        comm.Parameters.AddWithValue("@nActivo", activo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function


    Public Sub cargar(ByVal pIdEquipo As Integer)
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand(" select * from equipo where IdLiga = 1 AND idEquipo=@cve")
        comm.Parameters.AddWithValue("@cve", pIdEquipo)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Me.idEquipo = pIdEquipo
            Me.nombre = renglon("Nombre")
            Me.activo = Convert.ToInt16(renglon("Activo"))
            Me.fechaUltimaMod = renglon("FechaUltimaMod")
            Me.nombrePcMod = renglon("NombrePcMod")
            Me.claUsuarioMod = renglon("ClaUsuarioMod")
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Sub

    Public Function existeEquipo(ByVal nombre As String) As Boolean
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand(" select * from equipo where IdLiga = 1 AND Nombre=@nombre ")
        comm.Parameters.AddWithValue("@nombre", nombre)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Return True
        Else
            Return False
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Function

    Public ReadOnly Property [Error]() As String Implements System.ComponentModel.IDataErrorInfo.Error
        Get
            If String.IsNullOrEmpty(nombre) = True Then
                Return "Corrija los errores"
            Else
                Return ""
            End If
        End Get
    End Property

    Default Public ReadOnly Property Item(ByVal columnName As String) As String Implements System.ComponentModel.IDataErrorInfo.Item
        Get
            Select Case columnName
                Case "nombre"
                    If (String.IsNullOrEmpty(nombre)) Then
                        Return "Seleccione un nombre"
                    Else
                        Return ""
                    End If
                Case Else
                    Return ""
            End Select
        End Get
    End Property

    Public Function dameJugadores(ByVal pIdEquipo As Integer, ByVal pIdTorneo As Integer) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarJugadoresDisponibles")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", pIdTorneo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Public Sub EliminarJugadores(ByVal pIdEquipo As Integer, ByVal pIdTorneo As Integer)
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("eliminarJugadoresEquipo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", pIdTorneo)
        comm.Parameters.AddWithValue("@nIdEquipo", pIdEquipo)
        db.ejecutaComandoQuery(comm)

    End Sub

    Public Sub registrarJugador()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("RegistrarJugadorEquipo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        comm.Parameters.AddWithValue("@nNumero", Me.numero)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)

    End Sub

    Public Function EstaEnTorneoEquipo(ByVal idEquipo As Integer) As Boolean
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand("SELECT TOP 1 1 from JornadaPartido  JP JOIN dbo.Torneo	 T ON  JP.IdLiga = t.IdLiga AND JP.IdTorneo = t.IdTorneo where jp.IdLiga = 1 AND T.Activo = 1 And (JP.IdEquipo1 = @idEquipo Or JP.IdEquipo2 = @idEquipo)")
        comm.Parameters.AddWithValue("@idEquipo", idEquipo)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Return True
        Else
            Return False
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Function

    Public Function ValidarInformacionHistorica() As Boolean
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand("ValidarInformacionHistorica")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@IdTorneo", idTorneo)
        comm.Parameters.AddWithValue("@IdEquipo", idEquipo)
        'comm.Parameters.AddWithValue("@IdJugador", idJugador)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            If renglon("EsModificarRelacionEquipoJugador") = 1 Then
                Return True
            Else
                Return False
            End If
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Function


End Class

