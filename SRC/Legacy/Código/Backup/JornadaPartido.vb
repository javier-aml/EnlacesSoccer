Public Class JornadaPartido
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

    Private vIdEquipo1 As Integer
    Public Property idEquipo1() As Integer
        Get
            Return Me.vIdEquipo1
        End Get
        Set(ByVal value As Integer)
            Me.vIdEquipo1 = value
        End Set
    End Property

    Private vIdEquipo2 As Integer
    Public Property idEquipo2() As Integer
        Get
            Return Me.vIdEquipo2
        End Get
        Set(ByVal value As Integer)
            Me.vIdEquipo2 = value
        End Set
    End Property

    Private vGolesEquipo1 As Integer
    Public Property golesEquipo1() As Integer
        Get
            Return Me.vGolesEquipo1
        End Get
        Set(ByVal value As Integer)
            Me.vGolesEquipo1 = value
        End Set
    End Property

    Private vGolesEquipo2 As Integer
    Public Property golesEquipo2() As Integer
        Get
            Return Me.vGolesEquipo2
        End Get
        Set(ByVal value As Integer)
            Me.vGolesEquipo2 = value
        End Set
    End Property

    Private vIdArbitro As Integer
    Public Property idArbitro() As Integer
        Get
            Return Me.vIdArbitro
        End Get
        Set(ByVal value As Integer)
            Me.vIdArbitro = value
        End Set
    End Property


    Private vRecibioTarjetaAEquipo1 As Boolean
    Public Property recibioTarjetaAEquipo1() As Boolean
        Get
            Return Me.vRecibioTarjetaAEquipo1
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaAEquipo1 = value
        End Set
    End Property


    Private vRecibioTarjetaAEquipo2 As Boolean
    Public Property recibioTarjetaAEquipo2() As Boolean
        Get
            Return Me.vRecibioTarjetaAEquipo2
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaAEquipo2 = value
        End Set
    End Property

    Private vRecibioTarjetaREquipo1 As Boolean
    Public Property recibioTarjetaREquipo1() As Boolean
        Get
            Return Me.vRecibioTarjetaREquipo1
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaREquipo1 = value
        End Set
    End Property


    Private vRecibioTarjetaREquipo2 As Boolean
    Public Property recibioTarjetaREquipo2() As Boolean
        Get
            Return Me.vRecibioTarjetaREquipo2
        End Get
        Set(ByVal value As Boolean)
            Me.vRecibioTarjetaREquipo2 = value
        End Set
    End Property

    Private vGanaEnPenales1 As Boolean
    Public Property ganaEnPenales1() As Boolean
        Get
            Return Me.vGanaEnPenales1
        End Get
        Set(ByVal value As Boolean)
            Me.vGanaEnPenales1 = value
        End Set
    End Property


    Private vGanaEnPenales2 As Boolean
    Public Property ganaEnPenales2() As Boolean
        Get
            Return Me.vGanaEnPenales2
        End Get
        Set(ByVal value As Boolean)
            Me.vGanaEnPenales2 = value
        End Set
    End Property


    Private vJugado As Boolean
    Public Property jugado() As Boolean
        Get
            Return Me.vJugado
        End Get
        Set(ByVal value As Boolean)
            Me.vJugado = value
        End Set
    End Property

    Private vProgramado As Boolean
    Public Property programado() As Boolean
        Get
            Return Me.vProgramado
        End Get
        Set(ByVal value As Boolean)
            Me.vProgramado = value
        End Set
    End Property


    Private vFechaHora As DateTime
    Public Property fechaHora() As DateTime
        Get
            Return Me.vFechaHora
        End Get
        Set(ByVal value As DateTime)
            Me.vFechaHora = value
        End Set
    End Property

    Private vObservaciones As String
    Public Property observaciones() As String
        Get
            Return Me.vObservaciones
        End Get
        Set(ByVal value As String)
            Me.vObservaciones = value
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
        comm = New SqlClient.SqlCommand("jornadaPartidoSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
        comm.Parameters.AddWithValue("@nGolesEquipo1", Me.golesEquipo1)
        comm.Parameters.AddWithValue("@nGolesEquipo2", Me.golesEquipo2)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAEquipo1", Me.recibioTarjetaAEquipo1)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAEquipo2", Me.recibioTarjetaAEquipo2)
        comm.Parameters.AddWithValue("@nRecibioTarjetaREquipo1", Me.recibioTarjetaREquipo1)
        comm.Parameters.AddWithValue("@nRecibioTarjetaREquipo2", Me.recibioTarjetaREquipo2)
        comm.Parameters.AddWithValue("@nJugado", Me.jugado)
        comm.Parameters.AddWithValue("@nProgramado", Me.programado)
        comm.Parameters.AddWithValue("@tFechaHora", Me.fechaHora)
        comm.Parameters.AddWithValue("@nIdArbitro", Me.idArbitro)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jornadaPartidoSu")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
        comm.Parameters.AddWithValue("@nGolesEquipo1", Me.golesEquipo1)
        comm.Parameters.AddWithValue("@nGolesEquipo2", Me.golesEquipo2)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAEquipo1", Me.recibioTarjetaAEquipo1)
        comm.Parameters.AddWithValue("@nRecibioTarjetaAEquipo2", Me.recibioTarjetaAEquipo2)
        comm.Parameters.AddWithValue("@nRecibioTarjetaREquipo1", Me.recibioTarjetaREquipo1)
        comm.Parameters.AddWithValue("@nRecibioTarjetaREquipo2", Me.recibioTarjetaREquipo2)
        comm.Parameters.AddWithValue("@nGanaEnPenales1", Me.ganaEnPenales1)
        comm.Parameters.AddWithValue("@nGanaEnPenales2", Me.ganaEnPenales2)
        comm.Parameters.AddWithValue("@nJugado", Me.jugado)
        comm.Parameters.AddWithValue("@sObservaciones", Me.observaciones)
        comm.Parameters.AddWithValue("@nIdArbitro", Me.idArbitro)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizarHora()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jornadaPartidoActualizaHora")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
        comm.Parameters.AddWithValue("@nProgramado", Me.programado)
        comm.Parameters.AddWithValue("@tFechaHora", Me.fechaHora)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizarObservaciones()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("JorParObservacionesSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
        comm.Parameters.AddWithValue("@sObservaciones", Me.observaciones)
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

    Public Function consultar2() As DataSet
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("PartidosPorJornadaPorTorneo2")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        Dim ds = db.EjecutaCommandoDataSet(comm, "DataSet1")
        db = Nothing
        comm = Nothing
        Return ds
    End Function

    Public Function consultarObservaciones() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("JorParObservacionesSel")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
        Dim ds = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return ds
    End Function

    Public Function consultarJunta() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ValidarJunta")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        Dim ds = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return ds
    End Function

    Public Function consultarEstadisticaPorJornada() As DataSet
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("EstadisticasTorneoJornadaSel")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@pnIdJornada", Me.idJornada)
        Dim ds2 = db.EjecutaCommandoDataSet(comm, "DataSet1")
        db = Nothing
        comm = Nothing
        Return ds2
    End Function

    Public Function consultarDatosPartido() As DataSet
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("jugadoresEquipoSel")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo1", Me.idEquipo1)
        comm.Parameters.AddWithValue("@nIdEquipo2", Me.idEquipo2)
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
