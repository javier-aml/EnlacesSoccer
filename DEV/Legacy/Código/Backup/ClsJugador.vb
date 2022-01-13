Imports System.IO

Public Class ClsJugador

    Friend IdJugador As Short
    Friend Nombre As String
    Friend Activo As Boolean
    Friend IdUsuario As Byte
    Friend NumeroNomina As Integer
    Friend Planta As String
    Friend Contratista As String
    Friend Area As String
    Friend NumeroJugador As Integer
    Friend Foto As String
    Friend Imagen As Image

    Friend Ids As New ArrayList



    Friend Sub Guardar()
        Try

            Dim comm As SqlClient.SqlCommand
            Dim db As New DBTools
            comm = New SqlClient.SqlCommand("GuardaJugador")
            comm.CommandType = CommandType.StoredProcedure
            comm.Parameters.AddWithValue("@nombre", Me.Nombre)
            comm.Parameters.AddWithValue("@idusuario", Me.IdUsuario)
            comm.Parameters.AddWithValue("@NumeroNomina", Me.NumeroNomina)
            comm.Parameters.AddWithValue("@Planta", Me.Planta)
            comm.Parameters.AddWithValue("@Contratista", Me.Contratista)
            comm.Parameters.AddWithValue("@Area", Me.Area)
            comm.Parameters.AddWithValue("@NumeroJugador", Me.NumeroJugador)

            If Foto <> "" Then
                Dim fsFoto As FileStream
                fsFoto = New FileStream(Foto, FileMode.OpenOrCreate, FileAccess.Read)
                Dim fiFoto As FileInfo = New FileInfo(Foto)
                Dim Temp As Long = fiFoto.Length
                Dim lung As Long = Convert.ToInt32(Temp)
                Dim picture(lung) As Byte
                fsFoto.Read(picture, 0, lung)
                fsFoto.Close()

                comm.Parameters.Add("@Fotografia", System.Data.SqlDbType.Image)
                comm.Parameters("@Fotografia").Value = picture
            End If
            db.ejecutaComandoQuery(comm)


        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim comm As SqlClient.SqlCommand
            Dim db As New DBTools
            comm = New SqlClient.SqlCommand("ActualizaJugador")
            comm.CommandType = CommandType.StoredProcedure
            comm.Parameters.AddWithValue("@idjugador", Me.IdJugador)
            comm.Parameters.AddWithValue("@nombre", Me.Nombre)
            comm.Parameters.AddWithValue("@idusuario", Me.IdUsuario)
            comm.Parameters.AddWithValue("@NumeroNomina", Me.NumeroNomina)
            comm.Parameters.AddWithValue("@Planta", Me.Planta)
            comm.Parameters.AddWithValue("@Contratista", Me.Contratista)
            comm.Parameters.AddWithValue("@Area", Me.Area)
            comm.Parameters.AddWithValue("@NumeroJugador", Me.NumeroJugador)

            If Foto <> "" Then
                Dim fsFoto As FileStream
                fsFoto = New FileStream(Foto, FileMode.OpenOrCreate, FileAccess.Read)
                Dim fiFoto As FileInfo = New FileInfo(Foto)
                Dim Temp As Long = fiFoto.Length
                Dim lung As Long = Convert.ToInt32(Temp)
                Dim picture(lung) As Byte
                fsFoto.Read(picture, 0, lung)
                fsFoto.Close()

                comm.Parameters.Add("@Fotografia", System.Data.SqlDbType.Image)
                comm.Parameters("@Fotografia").Value = picture
            End If
            db.ejecutaComandoQuery(comm)

        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminaJugador " & IdJugador & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Activar()
        Try
            Dim Cadena As String
            Cadena = "ActivarJugador " & IdJugador & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


    'Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
    '    Dim SR As SqlClient.SqlDataReader
    '    Conexion.Comando.CommandText = "BuscaJugador '" & Cadena & "'"
    '    SR = Conexion.Comando.ExecuteReader
    '    LvResultados.Items.Clear()
    '    Dim Contador As Short
    '    If SR.HasRows = True Then
    '        While SR.Read
    '            Contador += 1
    '            Dim Elemento As New ListViewItem
    '            Elemento.Text = SR.Item("NOMBRE")
    '            Elemento.Tag = SR.Item("IDJUGADOR")
    '            Elemento.SubItems.Add(SR.Item("ACTIVO"))
    '            LvResultados.Items.Add(Elemento)
    '        End While
    '    End If
    '    SR.Close()
    'End Sub


    Public Function Buscar(ByVal Cadena As String) As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("BuscaJugador")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@nombre", Cadena)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function


    Friend Sub ObtieneInformacion()

        Dim imgBytes As Byte() = Nothing
        Dim stream As MemoryStream = Nothing

        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneJugador " & IdJugador
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Nombre = SR.Item("Nombre")
            If Not IsDBNull(SR.Item("NumeroNomina")) Then
                NumeroNomina = SR.Item("NumeroNomina")
            End If
            If Not IsDBNull(SR.Item("Planta")) Then
                Planta = SR.Item("Planta")
            End If
            If Not IsDBNull(SR.Item("Contratista")) Then
                Contratista = SR.Item("Contratista")
            End If
            If Not IsDBNull(SR.Item("NumeroCamisa")) Then
                NumeroJugador = SR.Item("NumeroCamisa")
            End If
            If Not IsDBNull(SR.Item("Area")) Then
                Area = SR.Item("Area")
            End If

            Try

                If Not IsDBNull(SR.Item("Fotografia")) Then
                    imgBytes = CType(SR.GetValue(4), Byte())
                    'Read the byte array into a MemoryStream
                    stream = New MemoryStream(imgBytes, 0, imgBytes.Length)
                    'Create the new Image from the stream
                    Imagen = Image.FromStream(stream)
                End If

            Catch
                MsgBox("Error al cargar la fotografia", MsgBoxStyle.Information, "Torneo de Acero")

            End Try


        End If
        SR.Close()
    End Sub

    Private Sub Limpiar()
        Nombre = ""
        NumeroNomina = 0
        Imagen = Nothing
        Planta = ""
        Contratista = ""
        NumeroJugador = 0
        Area = ""
        Foto = ""
    End Sub

    Friend Sub CargaCombo(ByRef Combo As ComboBox, Optional ByVal AgregarTodos As Boolean = False)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneJugadores "
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            Ids.Clear()
            Combo.Items.Clear()

            'si se indica que hay que agregar el elemento "Todos", se agrega
            If AgregarTodos = True Then
                Combo.Items.Add("Todos")
            End If

            While SR.Read
                Ids.Add(SR.Item("IDJUGADOR"))
                Combo.Items.Add(SR.Item("NOMBRE"))
            End While
        End If
        SR.Close()
        If Combo.Items.Count > 0 Then
            Combo.SelectedIndex = 0
        End If
    End Sub

    Public Function DameEstadisticaJugador(ByVal IdTorneo As Integer) As DataTable
        Dim dt As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarEstadisticaJugador")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdTorneo", IdTorneo)
        dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function


End Class
