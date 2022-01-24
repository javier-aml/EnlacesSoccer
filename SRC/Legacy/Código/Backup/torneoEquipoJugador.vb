Public Class torneoEquipoJugador
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

    Private vIdJugador As Integer
    Public Property idJugador() As Integer
        Get
            Return Me.vIdJugador
        End Get
        Set(ByVal value As Integer)
            Me.vIdJugador = value
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

    Private vGolesAnotados As Integer
    Public Property golesAnotados() As Integer
        Get
            Return Me.vGolesAnotados
        End Get
        Set(ByVal value As Integer)
            Me.vGolesAnotados = value
        End Set
    End Property

    Private vTarjetasAmarillasRecibidas As Integer
    Public Property tarjetasAmarillasRecibidas() As Integer
        Get
            Return Me.vTarjetasAmarillasRecibidas
        End Get
        Set(ByVal value As Integer)
            Me.vTarjetasAmarillasRecibidas = value
        End Set
    End Property

    Private vTarjetasRojasRecibidas As Integer
    Public Property tarjetasRojasRecibidas() As Integer
        Get
            Return Me.vTarjetasRojasRecibidas
        End Get
        Set(ByVal value As Integer)
            Me.vTarjetasRojasRecibidas = value
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

    End Sub

    Public Sub actualizar()
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("torneoEquipoJugadorSu")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nIdTorneo", Me.idTorneo)
        comm.Parameters.AddWithValue("@nIdEquipo", Me.idEquipo)
        comm.Parameters.AddWithValue("@nIdJugador", Me.idJugador)
        comm.Parameters.AddWithValue("@nPartidosJugados", Me.partidosJugados)
        comm.Parameters.AddWithValue("@nGolesAnotados", Me.golesAnotados)
        comm.Parameters.AddWithValue("@nTarjetasAmarillasRecibidas", Me.tarjetasAmarillasRecibidas)
        comm.Parameters.AddWithValue("@nTarjetasRojasRecibidas", Me.tarjetasRojasRecibidas)
        comm.Parameters.AddWithValue("@sNombrePcMod", Me.nombrePcMod)
        comm.Parameters.AddWithValue("@nClaUsuarioMod", Me.claUsuarioMod)
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
