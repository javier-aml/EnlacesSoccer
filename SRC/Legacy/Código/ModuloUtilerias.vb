Module ModuloUtilerias

    Friend Enum Tipos
        Decimales
        Cadenas
        Fechas
    End Enum

    Friend Function ObtieneId(ByVal Tag As String, ByVal Indice As Byte) As Integer
        Dim Ids() As String
        Ids = Tag.Split("-")
        Return CInt(Ids(Indice))
    End Function

    Friend Sub ChecaUnSoloElemento(ByRef ClbLista As CheckedListBox)
        Dim Indice, i As Byte
        Indice = ClbLista.SelectedIndex
        For i = 0 To ClbLista.Items.Count - 1
            If i <> Indice Then
                ClbLista.SetItemCheckState(i, CheckState.Unchecked)
            End If
        Next
    End Sub

    Friend Function ExisteElementoSeleccionado(ByRef LvResultados As ListView) As Boolean
        If LvResultados.Items.Count > 0 Then
            If LvResultados.SelectedItems.Count > 0 Then
                Return True
            Else
                Return False
            End If
        Else
            Return False
        End If
    End Function

    Friend Function ExistenElementos(ByRef LvResultados As ListView) As Boolean
        If LvResultados.Items.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function

    Friend Function FechaCorta(ByVal Fecha As Date) As String
        Return CStr(Fecha).Substring(0, 10)
    End Function

    Friend Function FechaHora(ByVal Fecha As Date) As String
        Return Format(Fecha, "dd/MM/yyyy HH:mm")
    End Function

    Friend Sub EstableceFechaEnServidor()
        Conexion.Comando.CommandText = "set dateformat ymd"
        Conexion.Comando.ExecuteNonQuery()
    End Sub

    Friend Function ConvierteFecha(ByVal Fecha As Date) As String
        ConvierteFecha = Format(Fecha, "yyyy-MM-dd 00:00:00")
    End Function

    Friend Function ConvierteHora(ByVal Fecha As Date) As String
        ConvierteHora = Format(Fecha, "yyyy-MM-dd hh:mm:ss.000")
    End Function

    Friend Function ConvierteDecimal(ByVal NumeroDecimal As Object) As String
        Dim ValorDecimal As String
        ValorDecimal = Format(NumeroDecimal, "###0.00")
        Return ValorDecimal.Replace(",", ".")
    End Function

    Friend Function ConvierteDecimalTres(ByVal NumeroDecimal As Object) As String
        Dim ValorDecimal As String
        ValorDecimal = Format(NumeroDecimal, "###0.000")
        Return ValorDecimal.Replace(",", ".")
    End Function

    Friend Function ConvierteNumeroDosDecimales(ByVal NumeroDecimal As Object) As String
        Dim ValorDecimal As String
        ValorDecimal = FormatNumber(Math.Round(CDec(NumeroDecimal), 2))
        Return ValorDecimal
    End Function

    Friend Sub ValidaDecimal(ByVal sender As Object, ByRef e As KeyPressEventArgs)
        If Char.IsNumber(e.KeyChar) = False Then
            If Char.IsControl(e.KeyChar) = False Then
                If e.KeyChar <> "." Or sender.text.indexof(".") <> -1 Then
                    e.Handled = True
                End If
            End If
        End If
    End Sub

    Friend Sub ValidaNumerico(ByVal sender As TextBox, ByRef e As KeyPressEventArgs)
        Dim Longitud As Integer
        Dim CadenaCompleta As String

      
        Longitud = Len(sender.Text & e.KeyChar)
        CadenaCompleta = sender.Text & e.KeyChar

        If Char.IsDigit(e.KeyChar) = True Or e.KeyChar = "." Or e.KeyChar = "," Or Char.IsControl(e.KeyChar) = True Then
            If Longitud = 1 And (e.KeyChar = "." Or e.KeyChar = ",") Then
                e.Handled = True
            Else
                If (e.KeyChar = "." And CadenaCompleta.IndexOf(".") <> CadenaCompleta.LastIndexOf(".")) Or (e.KeyChar = "," And CadenaCompleta.IndexOf(",") <> CadenaCompleta.LastIndexOf(",")) Then
                    e.Handled = True
                Else
                    e.Handled = False
                End If
            End If
        Else
            e.Handled = True
        End If
    End Sub


    Friend Sub ValidaEntero(ByVal sender As TextBox, ByRef e As KeyPressEventArgs)
        If Char.IsDigit(e.KeyChar) = False And Char.IsControl(e.KeyChar) = False Then
            e.Handled = True
        End If
    End Sub


    Friend Sub ValidaTexto(ByVal sender As Object, ByRef e As KeyPressEventArgs)
        If Char.IsControl(e.KeyChar) = True Or e.KeyChar <> "'" Then
            e.Handled = True
        End If
    End Sub



    Friend Sub LimpiaArbol(ByRef Arbol As TreeView)
        ArbolRecursivo(Arbol)
    End Sub

    Friend Sub SeleccionaNodo(ByRef Arbol As TreeView, ByVal Indice As Byte)
        Dim Nodo As TreeNode
        Arbol.ExpandAll()
        Nodo = Arbol.Nodes(0).Nodes(Indice)
        Arbol.SelectedNode = Nodo
        Arbol.Focus()
    End Sub

    Private Sub ArbolRecursivo(ByRef Arbol As TreeView)
        Dim Nodo As TreeNode
        For Each Nodo In Arbol.Nodes
            NodoRecursivo(Nodo)
        Next
    End Sub

    Private Sub NodoRecursivo(ByVal Nodo As TreeNode)
        Dim NodoNuevo As TreeNode

        If Nodo.Checked = True Then
            Nodo.Checked = False
        End If

        For Each NodoNuevo In Nodo.Nodes
            NodoRecursivo(NodoNuevo)
        Next
    End Sub

    Friend Sub HabilitaMenu(ByVal Menu As Menu, ByVal Nombre As String)
        Dim elemento As MenuItem
        For Each elemento In Menu.MenuItems
            If elemento.Text = Nombre Then
                elemento.Checked = False
                Exit For
            Else
                If elemento.MenuItems.Count > 0 Then
                    HabilitaMenu(elemento, Nombre)
                End If
            End If
        Next
    End Sub

    Friend Sub HabilitaBarra(ByVal Barra As ToolBar, ByVal Tag As String)
        Dim Boton As ToolBarButton
        For Each Boton In Barra.Buttons
            If Boton.Tag = Tag Then
                Boton.Pushed = False
                Exit For
            End If
        Next
    End Sub


    ' Ordena columnas del listview (cadena, decimal, fecha)
    Friend Class ClsOrdenarColumnas
        Implements IComparer

        Private col As Integer

        Public Sub New()
            col = 0
        End Sub

        Public TipoOrdenar As Tipos

        Public Sub New(ByVal column As Integer, ByVal Tipo As Tipos)
            TipoOrdenar = Tipo
            col = column
        End Sub

        Public Function Comparar(ByVal x As Object, ByVal y As Object) As Integer Implements IComparer.Compare
            If CType(x, ListViewItem).SubItems.Count > col Then
                Select Case TipoOrdenar
                    Case Tipos.Cadenas
                        Return [String].Compare(CType(x, ListViewItem).SubItems(col).Text, CType(y, ListViewItem).SubItems(col).Text)
                    Case Tipos.Decimales
                        Return [Decimal].Compare(CType(x, ListViewItem).SubItems(col).Text, CType(y, ListViewItem).SubItems(col).Text)
                    Case Tipos.Fechas
                        Return [Date].Compare(CType(x, ListViewItem).SubItems(col).Text, CType(y, ListViewItem).SubItems(col).Text)
                End Select
            End If
        End Function

    End Class

    Friend Sub Ordenar(ByRef LvResultados As ListView, ByVal column As Integer, ByVal Tipo As Tipos)
        LvResultados.ListViewItemSorter = New ClsOrdenarColumnas(column, Tipo)
        LvResultados.Sort()
    End Sub

    Friend Function ObtieneTotal(ByRef LvDetalle As ListView, ByVal IndiceColumna As Byte) As String
        Dim Total As Double
        Dim Contador As Byte
        Total = 0
        For Contador = 0 To LvDetalle.Items.Count - 1
            Total = Total + CDbl(LvDetalle.Items(Contador).SubItems(IndiceColumna).Text)
        Next
        If Configuracion = Configuraciones.España Then
            Total = Total / 100
        End If
        Return ConvierteDecimal(Total)
    End Function

End Module
