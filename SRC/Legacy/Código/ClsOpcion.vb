Public Class ClsOpcion

    Friend IdModulo As Byte
    Friend IdOpcion As Byte
    Friend Opcion As String
    Friend Nivel As Byte
    Friend Padre As Byte

    Friend Sub CargaTreeview(ByRef Arbol As TreeView)
        Dim SR As SqlClient.SqlDataReader
        Dim NodoPadre As TreeNode
        Conexion.Comando.CommandText = "ObtieneOpciones"
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            Arbol.Nodes.Clear()
            While SR.Read()
                Select Case SR.Item("NIVEL")
                    Case 1
                        NodoPadre = Arbol.Nodes.Add(SR.Item("OPCION"))
                        NodoPadre.Tag = SR.Item("IDOPCION")
                    Case Else
                        Padre = SR.Item("PADRE")
                        IdOpcion = SR.Item("IDOPCION")
                        Opcion = SR.Item("OPCION")
                        ArbolRecursivo(Arbol)
                End Select
            End While
        End If
        SR.Close()
    End Sub

    Private Sub ArbolRecursivo(ByRef Arbol As TreeView)
        Dim Nodo As TreeNode
        For Each Nodo In Arbol.Nodes
            NodoRecursivo(Nodo)
        Next
    End Sub

    Private Sub NodoRecursivo(ByVal Nodo As TreeNode)
        Dim NodoNuevo As TreeNode
        System.Diagnostics.Debug.WriteLine(Nodo.Text)
        If Nodo.Tag = Padre Then
            Nodo.Nodes.Add(Opcion).Tag = IdOpcion
        End If
        For Each NodoNuevo In Nodo.Nodes
            NodoRecursivo(NodoNuevo)
        Next
    End Sub


End Class
