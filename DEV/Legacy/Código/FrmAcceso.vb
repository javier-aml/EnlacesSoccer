Public Class FrmAcceso
    Inherits System.Windows.Forms.Form

#Region " Código generado por el Diseñador de Windows Forms "

    Public Sub New()
        MyBase.New()

        'El Diseñador de Windows Forms requiere esta llamada.
        InitializeComponent()

        'Agregar cualquier inicialización después de la llamada a InitializeComponent()

    End Sub

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms requiere el siguiente procedimiento
    'Puede modificarse utilizando el Diseñador de Windows Forms. 
    'No lo modifique con el editor de código.
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents ClbUsuarios As System.Windows.Forms.CheckedListBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents BtnGuardar As System.Windows.Forms.Button
    Friend WithEvents BtnCancelar As System.Windows.Forms.Button
    Friend WithEvents TrvAcceso As System.Windows.Forms.TreeView
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmAcceso))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.ClbUsuarios = New System.Windows.Forms.CheckedListBox
        Me.TrvAcceso = New System.Windows.Forms.TreeView
        Me.BtnGuardar = New System.Windows.Forms.Button
        Me.BtnCancelar = New System.Windows.Forms.Button
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.ClbUsuarios)
        Me.GroupBox1.Controls.Add(Me.TrvAcceso)
        Me.GroupBox1.Location = New System.Drawing.Point(8, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(472, 408)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(157, 16)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(55, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Opciones:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(15, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(47, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Usuario:"
        '
        'ClbUsuarios
        '
        Me.ClbUsuarios.CheckOnClick = True
        Me.ClbUsuarios.Location = New System.Drawing.Point(16, 32)
        Me.ClbUsuarios.Name = "ClbUsuarios"
        Me.ClbUsuarios.Size = New System.Drawing.Size(120, 356)
        Me.ClbUsuarios.TabIndex = 0
        Me.ToolTip1.SetToolTip(Me.ClbUsuarios, "Seleccione el usuario de la lista para asignale privilegios al sistema.")
        '
        'TrvAcceso
        '
        Me.TrvAcceso.CheckBoxes = True
        Me.TrvAcceso.Enabled = False
        Me.TrvAcceso.Location = New System.Drawing.Point(157, 32)
        Me.TrvAcceso.Name = "TrvAcceso"
        Me.TrvAcceso.Size = New System.Drawing.Size(299, 363)
        Me.TrvAcceso.TabIndex = 0
        Me.ToolTip1.SetToolTip(Me.TrvAcceso, "Seleccione las opciones que desea autorizar para el usuario seleccionado.")
        '
        'BtnGuardar
        '
        Me.BtnGuardar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnGuardar.Location = New System.Drawing.Point(272, 424)
        Me.BtnGuardar.Name = "BtnGuardar"
        Me.BtnGuardar.Size = New System.Drawing.Size(96, 39)
        Me.BtnGuardar.TabIndex = 11
        Me.BtnGuardar.Text = "Guardar"
        Me.BtnGuardar.UseVisualStyleBackColor = False
        '
        'BtnCancelar
        '
        Me.BtnCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnCancelar.Location = New System.Drawing.Point(384, 424)
        Me.BtnCancelar.Name = "BtnCancelar"
        Me.BtnCancelar.Size = New System.Drawing.Size(96, 39)
        Me.BtnCancelar.TabIndex = 12
        Me.BtnCancelar.Text = "Cancelar"
        Me.BtnCancelar.UseVisualStyleBackColor = False
        '
        'FrmAcceso
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 14)
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(490, 468)
        Me.Controls.Add(Me.BtnCancelar)
        Me.Controls.Add(Me.BtnGuardar)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "FrmAcceso"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Configuración de Acceso al Sistema"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub

    Private Sub FrmAcceso_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        CargaUsuarios()
        Opcion.CargaTreeview(Me.TrvAcceso)
    End Sub

    Private Sub CargaUsuarios()
        Usuario.CargaCheckedListBox(Me.ClbUsuarios)
    End Sub

    Private Sub ClbUsuarios_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ClbUsuarios.SelectedIndexChanged
        ChecaUnSoloElemento(Me.ClbUsuarios)
        If ClbUsuarios.CheckedItems.Count > 0 Then
            Me.TrvAcceso.Enabled = True
            Acceso.IdEmpleado = ObtieneId(Usuario.Ids(ClbUsuarios.SelectedIndex), 0)
            Acceso.IdUsuario = ObtieneId(Usuario.Ids(ClbUsuarios.SelectedIndex), 1)
            Acceso.CargarAcceso(Me.TrvAcceso)
            Me.TrvAcceso.ExpandAll()
        Else
            Marcado = True
            LimpiaArbol(Me.TrvAcceso)
            Me.TrvAcceso.Enabled = False
            Marcado = False
        End If
    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        If Me.ClbUsuarios.CheckedItems.Count > 0 Then
            GuardarAcceso()
            MsgBox("Debe reiniciar el sistema para guardar los cambios", MsgBoxStyle.Information, Mensaje)
            Me.Close()
        Else
            MsgBox("Seleccione el usuario", MsgBoxStyle.Information, Mensaje)
        End If
    End Sub

    Private Sub GuardarAcceso()
        Acceso.IdEmpleado = ObtieneId(Usuario.Ids(Me.ClbUsuarios.SelectedIndex), 0)
        Acceso.IdUsuario = ObtieneId(Usuario.Ids(Me.ClbUsuarios.SelectedIndex), 1)
        Acceso.EliminaAcceso()
        Acceso.GuardaAcceso(Me.TrvAcceso)
    End Sub

    Dim Marcado As Boolean
    Private Sub TrvAcceso_AfterCheck(ByVal sender As Object, ByVal e As System.Windows.Forms.TreeViewEventArgs) Handles TrvAcceso.AfterCheck
        Dim Nodo As TreeNode
        Dim NodoHijo As TreeNode

        If Marcado = True Then
            Exit Sub
        End If

        Marcado = True
        Nodo = e.Node
        If Not IsNothing(e.Node.Parent) Then
            Nodo = e.Node.Parent
            Nodo.Checked = True
            Dim ElementoChecado As Boolean = False

            For Each NodoHijo In e.Node.Parent.Nodes
                If NodoHijo.Checked = True Then
                    ElementoChecado = True
                End If
            Next
            If ElementoChecado = False Then
                e.Node.Parent.Checked = False
            End If
        Else
            For Each NodoHijo In Nodo.Nodes
                NodoHijo.Checked = False
            Next
        End If
        Marcado = False
    End Sub

    Private Sub FrmAcceso_Closed(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Closed
        HabilitaMenu(Me.ParentForm.Menu, "Configuración de Acceso")
    End Sub

    Private Sub TrvAcceso_AfterSelect(ByVal sender As System.Object, ByVal e As System.Windows.Forms.TreeViewEventArgs) Handles TrvAcceso.AfterSelect

    End Sub
End Class
