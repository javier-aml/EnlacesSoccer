Public Class ClsEstadisticaSanciones




    Public Function consultarEncabezado(ByVal IdTorneo As Integer) As DataTable ', ByVal IdJornada As Integer
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarEstadisticaSanciones")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdTorneo", IdTorneo)
        'comm.Parameters.AddWithValue("@pnIdJornada", IdJornada)
        Dim dt As DataTable = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function



    Public Function consultarDetalle(ByVal IdTorneo As Integer, ByVal IdJornada As Integer, ByVal IdEquipo As Integer, ByVal IdJugador As Integer) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarDetalleEstadisticaSanciones")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdTorneo", IdTorneo)
        comm.Parameters.AddWithValue("@pnIdJornada", IdJornada)
        comm.Parameters.AddWithValue("@pnIdEquipo", IdEquipo)
        comm.Parameters.AddWithValue("@pnIdJugador", IdJugador)
        Dim dt As DataTable = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function
End Class
