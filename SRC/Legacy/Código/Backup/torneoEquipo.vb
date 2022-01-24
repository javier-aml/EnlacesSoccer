Public Class torneoEquipo
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

    Private vIdEquipo As Integer
    Public Property idEquipo() As Integer
        Get
            Return Me.vIdEquipo
        End Get
        Set(ByVal value As Integer)
            Me.vIdEquipo = value
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


    Private vPartidosJugados As Integer
    Public Property partidosJugados() As Integer
        Get
            Return Me.vPartidosJugados
        End Get
        Set(ByVal value As Integer)
            Me.vPartidosJugados = value
        End Set
    End Property

    Private vPartidosGanados As Integer
    Public Property partidosGanados() As Integer
        Get
            Return Me.vPartidosGanados
        End Get
        Set(ByVal value As Integer)
            Me.vPartidosGanados = value
        End Set
    End Property

    Private vPartidosEmpatados As Integer
    Public Property partidosEmpatados() As Integer
        Get
            Return Me.vPartidosEmpatados
        End Get
        Set(ByVal value As Integer)
            Me.vPartidosEmpatados = value
        End Set
    End Property

    Private vPartidosPerdidos As Integer
    Public Property partidosPerdidos() As Integer
        Get
            Return Me.vPartidosPerdidos
        End Get
        Set(ByVal value As Integer)
            Me.vPartidosPerdidos = value
        End Set
    End Property


    Private vGolesFavor As Integer
    Public Property golesFavor() As Integer
        Get
            Return Me.vGolesFavor
        End Get
        Set(ByVal value As Integer)
            Me.vGolesFavor = value
        End Set
    End Property

    Private vGolesContra As Integer
    Public Property golesContra() As Integer
        Get
            Return Me.vGolesContra
        End Get
        Set(ByVal value As Integer)
            Me.vGolesContra = value
        End Set
    End Property

    Private vDiferenciaGoles As Integer
    Public Property diferenciaGoles() As Integer
        Get
            Return Me.vDiferenciaGoles
        End Get
        Set(ByVal value As Integer)
            Me.vDiferenciaGoles = value
        End Set
    End Property

    Private vPuntos As Integer
    Public Property puntos() As Integer
        Get
            Return Me.vPuntos
        End Get
        Set(ByVal value As Integer)
            Me.vPuntos = value
        End Set
    End Property

    Private vPuntosDescontadosFairPlay As Double
    Public Property puntosDescontadosFairPlay() As Double
        Get
            Return Me.vPuntosDescontadosFairPlay
        End Get
        Set(ByVal value As Double)
            Me.vPuntosDescontadosFairPlay = value
        End Set
    End Property

    Private vPuntosDescontadosJunta As Integer
    Public Property puntosDescontadosJunta() As Integer
        Get
            Return Me.vPuntosDescontadosJunta
        End Get
        Set(ByVal value As Integer)
            Me.vPuntosDescontadosJunta = value
        End Set
    End Property

    Private vPuntosFairPlay As Double
    Public Property puntosFairPlay() As Double
        Get
            Return Me.vPuntosFairPlay
        End Get
        Set(ByVal value As Double)
            Me.vPuntosFairPlay = value
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
        comm = New SqlClient.SqlCommand("torneoEquipoSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nPartidosJugados", Me.partidosJugados)
        comm.Parameters.AddWithValue("@nPartidosGanados", Me.partidosGanados)
        comm.Parameters.AddWithValue("@nPartidosEmpatados", Me.partidosEmpatados)
        comm.Parameters.AddWithValue("@nPartidosPerdidos", Me.partidosPerdidos)
        comm.Parameters.AddWithValue("@nGolesFavor", Me.golesFavor)
        comm.Parameters.AddWithValue("@nGolesContra", Me.golesContra)
        comm.Parameters.AddWithValue("@nDiferenciaGoles", Me.diferenciaGoles)
        comm.Parameters.AddWithValue("@nPuntos", Me.puntos)
        comm.Parameters.AddWithValue("@nPuntosFairPlay", Me.puntosFairPlay)
        comm.Parameters.AddWithValue("@nPuntosDescontadosFairPlay", Me.puntosDescontadosFairPlay)
        comm.Parameters.AddWithValue("@nPuntosDescontadosJunta", Me.puntosDescontadosJunta)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ActualizaEstadistica")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@IdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@IdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@IdEquipo", Me.idEquipo)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub actualizarJugador()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ActualizaEstadisticaJugador")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@IdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@IdEquipo", Me.idEquipo)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

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
