Public Class ClsEmpresa

    Friend IdEmpresa As Byte
    Friend Nombre As String
    Friend Rfc As String
    Friend Calle As String
    Friend Numero As String
    Friend Colonia As String
    Friend IdEstado As Byte
    Friend IdMunicipio As Short
    Friend IdUsuario As Byte

    Friend Ids As New ArrayList

    Friend Sub Guardar()
        Try
            Dim Cadena As String
            Cadena = "GuardaEmpresa '" & Nombre & "','" & Rfc & "','" & Calle & "','" & _
                      Numero & "','" & Colonia & "'," & IdEstado & "," & IdMunicipio & "," & Usuario.IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Cadena = "ActualizaEmpresa " & IdEmpresa & ",'" & Nombre & "','" & Rfc & "','" & Calle & "','" & _
                      Numero & "','" & Colonia & "'," & IdEstado & "," & IdMunicipio & "," & Usuario.IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminaEmpresa " & IdEmpresa & "," & Usuario.IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscaEmpresa '" & Cadena & "'"
        SR = Conexion.Comando.ExecuteReader
        LvResultados.Items.Clear()
        If SR.HasRows = True Then
            While SR.Read
                Dim Elemento As New ListViewItem
                Elemento.Text = SR.Item("NOMBRE")
                Elemento.Tag = SR.Item("IDEMPRESA")
                Elemento.SubItems.Add(SR.Item("RFC"))
                LvResultados.Items.Add(Elemento)
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub ObtieneInformacion()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneEmpresa " & IdEmpresa
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Nombre = SR.Item("NOMBRE")
            Rfc = SR.Item("RFC")
            Calle = SR.Item("CALLE")
            Numero = SR.Item("NUMERO")
            Colonia = SR.Item("COLONIA")
            IdEstado = SR.Item("IDESTADO")
            IdMunicipio = SR.Item("IDMUNICIPIO")
        End If
        SR.Close()
    End Sub

    Private Sub Limpiar()
        Nombre = ""
        Rfc = ""
        Calle = ""
        Numero = ""
        Colonia = ""
        IdEstado = 0
        IdMunicipio = 0
    End Sub

    Friend Sub CargarInforme(ByRef DsEmpresa As DataSet)
        Dim SdaEmpresa As New SqlClient.SqlDataAdapter("ObtieneEmpresaInforme " & IdEmpresa, Conexion.Conexion)
        SdaEmpresa.Fill(DsEmpresa, "INFORMEEMPRESA")
    End Sub

    Friend Sub CargaCombo(ByRef Combo As ComboBox)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneEmpresas"
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            Ids.Clear()
            Combo.Items.Clear()
            While SR.Read
                Ids.Add(SR.Item("IDEMPRESA"))
                Combo.Items.Add(SR.Item("NOMBRE"))
            End While
        End If
        SR.Close()
        If Combo.Items.Count > 0 Then
            Combo.SelectedIndex = 0
        End If
    End Sub




End Class
