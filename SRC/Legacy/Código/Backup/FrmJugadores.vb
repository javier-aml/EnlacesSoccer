Public Class FrmJugadores
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
    Friend WithEvents TxtBuscar As System.Windows.Forms.TextBox
    Friend WithEvents LblTipo As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents BtnBuscar As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents DgResultados As System.Windows.Forms.DataGridView
    Friend WithEvents MnuJugadores As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents mnuNuevo As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents mnuModificar As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents mnuBaja As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents mnuActivar As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn5 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn6 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn7 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmJugadores))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.DgResultados = New System.Windows.Forms.DataGridView
        Me.Label1 = New System.Windows.Forms.Label
        Me.TxtBuscar = New System.Windows.Forms.TextBox
        Me.LblTipo = New System.Windows.Forms.Label
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.BtnBuscar = New System.Windows.Forms.Button
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.MnuJugadores = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.mnuNuevo = New System.Windows.Forms.ToolStripMenuItem
        Me.mnuModificar = New System.Windows.Forms.ToolStripMenuItem
        Me.mnuBaja = New System.Windows.Forms.ToolStripMenuItem
        Me.mnuActivar = New System.Windows.Forms.ToolStripMenuItem
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn4 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn5 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn6 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn7 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.GroupBox1.SuspendLayout()
        CType(Me.DgResultados, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.MnuJugadores.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.DgResultados)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(10, 96)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(946, 375)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        '
        'DgResultados
        '
        Me.DgResultados.AllowUserToAddRows = False
        Me.DgResultados.AllowUserToDeleteRows = False
        Me.DgResultados.AllowUserToOrderColumns = True
        Me.DgResultados.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.DgResultados.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgResultados.ContextMenuStrip = Me.MnuJugadores
        Me.DgResultados.Location = New System.Drawing.Point(15, 38)
        Me.DgResultados.MultiSelect = False
        Me.DgResultados.Name = "DgResultados"
        Me.DgResultados.ReadOnly = True
        Me.DgResultados.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DgResultados.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DgResultados.Size = New System.Drawing.Size(921, 328)
        Me.DgResultados.TabIndex = 6
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(17, 15)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(71, 20)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Resultados"
        '
        'TxtBuscar
        '
        Me.TxtBuscar.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TxtBuscar.Location = New System.Drawing.Point(15, 38)
        Me.TxtBuscar.Name = "TxtBuscar"
        Me.TxtBuscar.Size = New System.Drawing.Size(447, 25)
        Me.TxtBuscar.TabIndex = 1
        '
        'LblTipo
        '
        Me.LblTipo.AutoSize = True
        Me.LblTipo.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblTipo.Location = New System.Drawing.Point(15, 14)
        Me.LblTipo.Name = "LblTipo"
        Me.LblTipo.Size = New System.Drawing.Size(57, 20)
        Me.LblTipo.TabIndex = 4
        Me.LblTipo.Text = "Nombre:"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.LblTipo)
        Me.GroupBox2.Controls.Add(Me.TxtBuscar)
        Me.GroupBox2.Controls.Add(Me.BtnBuscar)
        Me.GroupBox2.Location = New System.Drawing.Point(10, 8)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(946, 78)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        '
        'BtnBuscar
        '
        Me.BtnBuscar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnBuscar.Image = CType(resources.GetObject("BtnBuscar.Image"), System.Drawing.Image)
        Me.BtnBuscar.Location = New System.Drawing.Point(471, 33)
        Me.BtnBuscar.Name = "BtnBuscar"
        Me.BtnBuscar.Size = New System.Drawing.Size(74, 32)
        Me.BtnBuscar.TabIndex = 2
        Me.BtnBuscar.UseVisualStyleBackColor = False
        '
        'MnuJugadores
        '
        Me.MnuJugadores.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuNuevo, Me.mnuModificar, Me.mnuBaja, Me.mnuActivar})
        Me.MnuJugadores.Name = "MnuJugadores2"
        Me.MnuJugadores.Size = New System.Drawing.Size(134, 92)
        '
        'mnuNuevo
        '
        Me.mnuNuevo.Name = "mnuNuevo"
        Me.mnuNuevo.Size = New System.Drawing.Size(152, 22)
        Me.mnuNuevo.Text = "Nuevo"
        '
        'mnuModificar
        '
        Me.mnuModificar.Name = "mnuModificar"
        Me.mnuModificar.Size = New System.Drawing.Size(152, 22)
        Me.mnuModificar.Text = "Modificar"
        '
        'mnuBaja
        '
        Me.mnuBaja.Name = "mnuBaja"
        Me.mnuBaja.Size = New System.Drawing.Size(152, 22)
        Me.mnuBaja.Text = "Dar de Baja"
        '
        'mnuActivar
        '
        Me.mnuActivar.Name = "mnuActivar"
        Me.mnuActivar.Size = New System.Drawing.Size(152, 22)
        Me.mnuActivar.Text = "Activar"
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "IdJugador"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.Visible = False
        Me.DataGridViewTextBoxColumn1.Width = 10
        '
        'DataGridViewTextBoxColumn2
        '
        Me.DataGridViewTextBoxColumn2.FillWeight = 183.2313!
        Me.DataGridViewTextBoxColumn2.HeaderText = "Nombre"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        Me.DataGridViewTextBoxColumn2.Width = 268
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.FillWeight = 103.5205!
        Me.DataGridViewTextBoxColumn3.HeaderText = "N° Nomina"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        Me.DataGridViewTextBoxColumn3.Width = 152
        '
        'DataGridViewTextBoxColumn4
        '
        Me.DataGridViewTextBoxColumn4.FillWeight = 94.51365!
        Me.DataGridViewTextBoxColumn4.HeaderText = "Planta"
        Me.DataGridViewTextBoxColumn4.Name = "DataGridViewTextBoxColumn4"
        Me.DataGridViewTextBoxColumn4.Width = 138
        '
        'DataGridViewTextBoxColumn5
        '
        Me.DataGridViewTextBoxColumn5.FillWeight = 84.48905!
        Me.DataGridViewTextBoxColumn5.HeaderText = "Contratista"
        Me.DataGridViewTextBoxColumn5.Name = "DataGridViewTextBoxColumn5"
        Me.DataGridViewTextBoxColumn5.Width = 124
        '
        'DataGridViewTextBoxColumn6
        '
        Me.DataGridViewTextBoxColumn6.FillWeight = 73.33173!
        Me.DataGridViewTextBoxColumn6.HeaderText = "Area"
        Me.DataGridViewTextBoxColumn6.Name = "DataGridViewTextBoxColumn6"
        Me.DataGridViewTextBoxColumn6.Width = 107
        '
        'DataGridViewTextBoxColumn7
        '
        Me.DataGridViewTextBoxColumn7.FillWeight = 60.9137!
        Me.DataGridViewTextBoxColumn7.HeaderText = "Activo"
        Me.DataGridViewTextBoxColumn7.Name = "DataGridViewTextBoxColumn7"
        Me.DataGridViewTextBoxColumn7.Width = 89
        '
        'FrmJugadores
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 18)
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(968, 486)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "FrmJugadores"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Catálogo de Jugadores"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.DgResultados, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.MnuJugadores.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region



    Private Sub BtnBuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnBuscar.Click
        Buscar()
    End Sub

    Private Sub Buscar()
        Dim data As New Object
        data = Jugador.Buscar(Me.TxtBuscar.Text)
        Dim datasource As New BindingSource(data, Nothing)
        DgResultados.DataSource = datasource
        DgResultados.Columns("IdJugador").Visible = False
        DgResultados.Columns("Nombre").Width = 250
        DgResultados.Columns("NumeroNomina").Width = 70
        DgResultados.Columns("NumeroNomina").HeaderText = "N° Nomina"
        DgResultados.Columns("Planta").Width = 100
        DgResultados.Columns("Contratista").Width = 100
        DgResultados.Columns("Area").Width = 100
        DgResultados.Columns("Activo").Width = 70
    End Sub

    Private Sub MnuNuevo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        AccionJugador.Accion = AccionJugador.Acciones.Nuevo
        Dim NuevoJugador As New FrmNuevoJugador
        NuevoJugador.ShowDialog()
        If AccionJugador.Accion = AccionJugador.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub MnuModificar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.CurrentRow.Index <> -1 Then
                Modificar()
            End If
        End If
    End Sub

    Private Sub Modificar()
        AccionJugador.Accion = AccionJugador.Acciones.Modificar
        Jugador.IdJugador = Me.DgResultados.CurrentRow.Cells("IdJugador").Value
        Dim NuevoJugador As New FrmNuevoJugador
        NuevoJugador.ShowDialog()
        If AccionJugador.Accion = AccionJugador.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub MnuBaja_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.CurrentRow.Index <> -1 Then
                Eliminar()
            End If
        End If
    End Sub

    Private Sub Eliminar()
        If MsgBox("Esta seguro de dar de baja al jugador seleccionado", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "Sistema") = MsgBoxResult.Yes Then
            Jugador.IdJugador = Me.DgResultados.CurrentRow.Cells("IdJugador").Value
            Jugador.IdUsuario = Usuario.IdUsuario
            Jugador.Eliminar()
            Buscar()
        End If
    End Sub


    Private Sub OcultarMenuModificar()
        Me.MnuNuevo.Visible = True
        Me.MnuModificar.Enabled = False
        Me.MnuBaja.Enabled = False
        Me.MnuActivar.Enabled = False
    End Sub


    Private Sub MostrarMenuModificar()
        Me.MnuNuevo.Enabled = True
        Me.MnuModificar.Enabled = True
        Me.MnuBaja.Enabled = True
        Me.MnuActivar.Enabled = True
    End Sub


    Private Sub TxtBuscar_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TxtBuscar.KeyPress
        If e.KeyChar = ControlChars.Cr Then
            Buscar()
        End If
    End Sub

    Private Sub FrmClientes_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Catálogo de Jugadores")
    End Sub

    Private Sub MnuActivar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.SelectedRows.Count > 0 Then
                Activar()
            End If
        End If
    End Sub

    Private Sub Activar()
        Jugador.IdJugador = Me.DgResultados.CurrentRow.Cells("IdJugador").Value
        Jugador.IdUsuario = Usuario.IdUsuario
        Jugador.Activar()
        Buscar()

    End Sub


    Private Sub mnuNuevo2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuNuevo.Click
        AccionJugador.Accion = AccionJugador.Acciones.Nuevo
        Dim NuevoJugador As New FrmNuevoJugador
        NuevoJugador.ShowDialog()
        If AccionJugador.Accion = AccionJugador.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub mnuModificar2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuModificar.Click
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.SelectedRows.Count > 0 Then
                Modificar()
            End If
        End If

    End Sub

    Private Sub mnuBaja2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuBaja.Click
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.SelectedRows.Count > 0 Then
                Eliminar()
            End If
        End If
    End Sub

    Private Sub mnuActivar2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuActivar.Click
        If Me.DgResultados.RowCount > 0 Then
            If Me.DgResultados.SelectedRows.Count > 0 Then
                Activar()
            End If
        End If
    End Sub
End Class
