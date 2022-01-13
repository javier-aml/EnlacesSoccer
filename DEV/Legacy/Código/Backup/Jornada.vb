Public Class Jornada
    Implements System.ComponentModel.IDataErrorInfo

    Private vPartidos As New ArrayList()
    Public Property partidos() As ArrayList
        Get
            Return Me.vPartidos
        End Get
        Set(ByVal value As ArrayList)
            Me.vPartidos = value
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

    Private vIdJornada As Integer
    Public Property idJornada() As Integer
        Get
            Return Me.vIdJornada
        End Get
        Set(ByVal value As Integer)
            Me.vIdJornada = value
        End Set
    End Property

    Private vPorJugar As Boolean
    Public Property porJugar() As Boolean
        Get
            Return Me.vPorJugar
        End Get
        Set(ByVal value As Boolean)
            Me.vPorJugar = value
        End Set
    End Property

    Private vTieneJuegosPendientes As Boolean
    Public Property tieneJuegosPendientes() As Boolean
        Get
            Return Me.vTieneJuegosPendientes
        End Get
        Set(ByVal value As Boolean)
            Me.vTieneJuegosPendientes = value
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

    Public Sub registrar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jornadaSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nPorJugar", Me.porJugar)
        comm.Parameters.AddWithValue("@nTieneJuegoPendiente", Me.tieneJuegosPendientes)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jornadaSu")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nPorJugar", Me.porJugar)
        comm.Parameters.AddWithValue("@nTieneJuegoPendiente", Me.tieneJuegosPendientes)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Function consultar() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("JornadasPorTorneo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Public Function consultarJornadasJugadas() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("JornadasPorTorneoJugadas")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Public ReadOnly Property [Error]() As String Implements System.ComponentModel.IDataErrorInfo.Error
        Get
            Return ""
        End Get
    End Property

    Default Public ReadOnly Property Item(ByVal columnName As String) As String Implements System.ComponentModel.IDataErrorInfo.Item
        Get
            Select Case columnName
                Case Else
                    Return ""
            End Select
        End Get
    End Property

End Class
