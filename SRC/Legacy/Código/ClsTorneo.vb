Public Class ClsTorneo

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


    Private vIdTorneo As Integer
    Public Property idTorneo() As Integer
        Get
            Return Me.vIdTorneo
        End Get
        Set(ByVal value As Integer)
            Me.vIdTorneo = value
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



    ''' <summary>
    ''' Metodo que utlizo para cargar el torneo activo
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub cargarTorneoActivo()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand("DameTorneoActivo")
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Me.idTorneo = renglon("IdTorneo")
            Me.nombre = renglon("Nombre")
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Sub

    ''' <summary>
    ''' Metodo que utlizo para guardar el torneo creado
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub RegistrarTorneo()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow

        comm = New SqlClient.SqlCommand("torneoSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@sNombreTorneo", Me.nombre)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Me.idTorneo = renglon("IdTorneo")
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Sub

    ''' <summary>
    ''' Metodo que utlizo para cargar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Public Function cargarTorneosActivos() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand("DameTorneosActivos")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@Activo", Me.activo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    ''' <summary>
    ''' Metodo que utlizo para cargar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Public Function cargarJornadas(ByVal Torneo As Int32, ByVal Jornada As Int32) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("JornadasParaJuntas")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Torneo)
        comm.Parameters.AddWithValue("@nIdJornada", Jornada)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function


    Public Function cargarEquiposActivosTorneo(ByVal torneo As Int32, ByVal Jornada As Int32) As DataSet
        Dim idTorneo As Int32
        idTorneo = torneo
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("AsistenciaJuntaEquiposSel")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdTorneo", idTorneo)
        comm.Parameters.AddWithValue("@pnIdJornada", Jornada)
        Dim ds = db.EjecutaCommandoDataSet(comm, "DataSet1")
        db = Nothing
        comm = Nothing
        Return ds
    End Function

    Public Function Consultar(ByVal Activo As Integer) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarTorneos")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nActivo", activo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ModificarTorneo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@IdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@Nombre", Me.nombre)
        comm.Parameters.AddWithValue("@Activo", Me.activo)        
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub CargarInformacionTorneo()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        Dim renglon As DataRow
        comm = New SqlClient.SqlCommand("ObtenerInformacionTorneo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@IdTorneo", Me.idTorneo)
        renglon = db.ejecutaComandoRenglon(comm, "renglon")
        If IsNothing(renglon) = False Then
            Me.nombre = renglon("Nombre")
            Me.activo = Convert.ToInt16(renglon("Activo"))
        End If
        db = Nothing
        comm = Nothing
        renglon = Nothing
    End Sub

End Class
