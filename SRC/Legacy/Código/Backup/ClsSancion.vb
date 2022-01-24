Public Class ClsSancion
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

    Private vIdTipoSancion As Integer
    Public Property idTipoSancion() As Integer
        Get
            Return Me.vIdTipoSancion
        End Get
        Set(ByVal value As Integer)
            Me.vIdTipoSancion = value
        End Set
    End Property

    Private vJuegosSuspendido As Integer
    Public Property juegosSuspendido() As Integer
        Get
            Return Me.vJuegosSuspendido
        End Get
        Set(ByVal value As Integer)
            Me.vJuegosSuspendido = value
        End Set
    End Property

    Private vJuegosPendientes As Integer
    Public Property juegosPendientes() As Integer
        Get
            Return Me.vJuegosPendientes
        End Get
        Set(ByVal value As Integer)
            Me.vJuegosPendientes = value
        End Set
    End Property

    Private vActiva As Boolean
    Public Property activa() As Boolean
        Get
            Return Me.vActiva
        End Get
        Set(ByVal value As Boolean)
            Me.vActiva = value
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
        comm = New SqlClient.SqlCommand("SancionSi")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        comm.Parameters.AddWithValue("@nIdTipoSancion", Me.idTipoSancion)
        comm.Parameters.AddWithValue("@nJuegosSuspendido", Me.juegosSuspendido)
        comm.Parameters.AddWithValue("@nJuegosPendientes", Me.juegosPendientes)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

    Public Sub eliminar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("SancionSd")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdJornada", Me.idJornada)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        db.ejecutaComandoQuery(comm)
        db = Nothing
        comm = Nothing
    End Sub

End Class
