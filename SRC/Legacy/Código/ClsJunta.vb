Public Class ClsJunta

    Friend IdJunta As Integer
    Friend FechaHora As Date
    Friend Acuerdos As String
    Friend Observaciones As String
    Friend IdUsuario As Byte
    Friend IdTorneo As Integer
    Friend IdJornada As Integer
    Friend SoloJunta As Integer
    Friend Erro As String


    Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As Date)
        LvResultados.Items.Clear()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscarJuntaSel 1,'" & Cadena.ToShortDateString & "'"
        SR = Conexion.Comando.ExecuteReader
        Dim Contador As Short
        If SR.HasRows = True Then
            While SR.Read
                Contador += 1
                Dim Elemento As New ListViewItem
                Elemento.Text = SR.Item("FechaHora")
                Elemento.Tag = SR.Item("IdJunta")
                'Elemento.SubItems.Add(SR.Item("FechaHora"))
                LvResultados.Items.Add(Elemento)
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub Ver(ByRef datos As Collection, ByVal idJunta As Integer, ByVal Cadena As Integer)
        datos.Clear()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscarJuntaDetSel 1," & idJunta & "," & Cadena
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            While SR.Read
                datos.Add(SR.Item("IdJunta"), "IdJunta")
                datos.Add(SR.Item("FechaHora"), "FechaHora")
                datos.Add(SR.Item("Acuerdos"), "Acuerdos")
                datos.Add(SR.Item("Observaciones"), "Observaciones")
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub Guardar()
        Try
            Erro = ""
            Dim comm As SqlClient.SqlCommand
            Dim db As New DBTools
            comm = New SqlClient.SqlCommand("GuardarJuntaSI")
            comm.CommandType = CommandType.StoredProcedure
            comm.Parameters.AddWithValue("@pnIdLiga", 1)
            comm.Parameters.AddWithValue("@psAcuerdos", Me.Acuerdos)
            comm.Parameters.AddWithValue("@psObservaciones", Me.Observaciones)
            comm.Parameters.AddWithValue("@idusuario", Me.IdUsuario)
            comm.Parameters.AddWithValue("@idTorneo", Me.IdTorneo)
            comm.Parameters.AddWithValue("@dFecha", Convert.ToDateTime(Me.FechaHora.ToShortDateString()))
            Dim errores As New System.Data.SqlClient.SqlParameter
            errores.Direction() = ParameterDirection.Output
            errores.ParameterName() = "@sError"
            errores.Size = 50
            Dim idjunta As New System.Data.SqlClient.SqlParameter
            idjunta.Direction() = ParameterDirection.Output
            idjunta.ParameterName() = "@pnIdJunta"
            idjunta.Size = 50
            comm.Parameters.Add(idjunta)
            comm.Parameters.Add(errores)
            db.ejecutaComandoQuery(comm)
            Erro = errores.Value.ToString
            Junta.IdJunta = Convert.ToInt32(idjunta.Value)
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Cadena = "ActualizarJuntaSU 1," & IdJunta & "," & IdTorneo & ",'" & Acuerdos & "','" & Observaciones & "'," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub GuardarAsistencia(ByVal Equipo As Integer, ByVal Asistencia As Integer)
        Try
            Erro = ""
            Dim Cadena As String
            Cadena = "AsistenciaJuntaEquiposSi 1," & IdTorneo & "," & IdJornada & "," & Equipo & "," & IdJunta & "," & Asistencia
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Juntas(ByRef datos As DataTable, ByVal Torneo As Integer, ByVal SoloJunta As Integer)
        

        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("Juntas")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdLiga", 1)
        comm.Parameters.AddWithValue("@nIdTorneo", Torneo)
        comm.Parameters.AddWithValue("@nSoloJornada", SoloJunta)
        datos = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing


    End Sub


End Class
