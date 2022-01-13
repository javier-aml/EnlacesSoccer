Public Class jornadaPartidoJugador
    Implements System.ComponentModel.IDataErrorInfo

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

    Private vIdEquipo As Integer
    Public Property idEquipo() As Integer
        Get
            Return Me.vIdEquipo
        End Get
        Set(ByVal value As Integer)
            Me.vIdEquipo = value
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

    Private vGolesJugador As Integer
    Public Property golesJugador() As Integer
        Get
            Return Me.vGolesJugador
        End Get
        Set(ByVal value As Integer)
            Me.vGolesJugador = value
        End Set
    End Property

    Private vJugo As Boolean
    Public Property jugo() As Boolean
        Get
            Return Me.vJugo
        End Get
        Set(ByVal value As Boolean)
            Me.vJugo = value
        End Set
    End Property

    Private vRecibioTarjetaAmarilla As Boolean
    Public Property recibioTarjetaAmarilla() As Boolean
        Get
            Return Me.vRecibioTarjetaAmarilla
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaAmarilla = value
        End Set
    End Property

    Private vRecibioTarjetaRoja As Boolean
    Public Property recibioTarjetaRoja() As Boolean
        Get
            Return Me.vRecibioTarjetaRoja
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaRoja = value
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
        comm = New SqlClient.SqlCommand("jornadaPartidoJugadorSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        comm.Parameters.AddWithValue("@nGolesJugador", Me.golesJugador)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAmarilla", Me.recibioTarjetaAmarilla)
        comm.Parameters.AddWithValue("@nRecibioTarjetaRoja", Me.recibioTarjetaRoja)
        comm.Parameters.AddWithValue("@nJugo", Me.jugo)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jornadaPartidoJugadorSu")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        comm.Parameters.AddWithValue("@nGolesJugador", Me.golesJugador)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAmarilla", Me.recibioTarjetaAmarilla)
        comm.Parameters.AddWithValue("@nRecibioTarjetaRoja", Me.recibioTarjetaRoja)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Function consultar() As DataSet
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("PartidosPorJornadaPorTorneo")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        Dim ds = db.EjecutaCommandoDataSet(comm, "DataSet1")
        db = Nothing
        comm = Nothing
        Return ds
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
