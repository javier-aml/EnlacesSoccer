Public Class ControlAcceso
    Friend IdOpcion As Byte
    Friend Nivel As Byte
    Friend Padre As Byte
End Class


Public Class ClsAcceso

    Friend IdEmpleado As Byte
    Friend IdUsuario As Byte
    Friend IdOpcion As Byte
    Friend IdAcceso As Byte
    Friend Operacion As Operaciones
    Friend VectorAcceso As New ArrayList

    Enum Operaciones
        Cargar
        Guardar
    End Enum

    Friend Sub Activa(ByRef Boton As ToolBarButton)
        Boton.Visible = True
    End Sub

    Friend Sub VerificaAcceso(ByRef MnuMenu As MainMenu)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "VerificaAcceso " & IdUsuario & "," & 1
        SR = Conexion.Comando.ExecuteReader
        VectorAcceso.Clear()
        If SR.HasRows = True Then
            While SR.Read()

                Dim Control As New ControlAcceso
                Control.IdOpcion = SR.Item("IDOPCION")
                Control.Nivel = SR.Item("NIVEL")
                Control.Padre = SR.Item("PADRE")
                VectorAcceso.Add(Control)
            End While
        End If
        SR.Close()
    End Sub


    Friend Sub CargarAcceso(ByRef Arbol As TreeView)
        Dim Nodo As TreeNode
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "VerificaAcceso " & IdEmpleado & "," & IdUsuario & "," & 1
        SR = Conexion.Comando.ExecuteReader
        LimpiaArbol(Arbol)
        If SR.HasRows = True Then
            While SR.Read()
                For Each Nodo In Arbol.Nodes
                    If Nodo.Tag = SR.Item("IDOPCION") Then
                        Nodo.Checked = True
                    End If
                Next
                IdOpcion = SR.Item("IDOPCION")
                Operacion = Operaciones.Cargar
                ArbolRecursivo(Arbol)
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub GuardaAcceso(ByRef Arbol As TreeView)
        Dim Nodo As TreeNode

        For Each Nodo In Arbol.Nodes
            If Nodo.Checked = True Then
                IdOpcion = Nodo.Tag
                Guardar()
            End If
        Next

        Operacion = Operaciones.Guardar
        ArbolRecursivo(Arbol)
    End Sub

    Private Sub ArbolRecursivo(ByRef Arbol As TreeView)
        Dim Nodo As TreeNode
        For Each Nodo In Arbol.Nodes
            NodoRecursivo(Nodo)
        Next
    End Sub

    Private Sub NodoRecursivo(ByVal Nodo As TreeNode)
        Dim NodoNuevo As TreeNode

        If Operacion = Operaciones.Guardar Then
            If Nodo.Checked = True Then
                IdOpcion = Nodo.Tag
                Guardar()
            End If
        Else
            If Nodo.Tag = IdOpcion Then
                Nodo.Checked = True
            End If
        End If


        For Each NodoNuevo In Nodo.Nodes
            NodoRecursivo(NodoNuevo)
        Next
    End Sub

    Private Sub Guardar()
        Try
            Conexion.Comando.CommandText = "GuardaAcceso " & IdEmpleado & "," & IdUsuario & "," & 1 & "," & IdOpcion
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub EliminaAcceso()
        Try
            Conexion.Comando.CommandText = "EliminaAcceso " & IdEmpleado & "," & IdUsuario & "," & 1
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub



End Class
