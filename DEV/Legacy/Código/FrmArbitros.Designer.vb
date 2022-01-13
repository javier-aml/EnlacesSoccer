<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmArbitros
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmArbitros))
        Me.GpbFiltros = New System.Windows.Forms.GroupBox
        Me.BtnBuscar = New System.Windows.Forms.Button
        Me.txtNombre = New System.Windows.Forms.TextBox
        Me.lblNombre = New System.Windows.Forms.Label
        Me.GpbResultados = New System.Windows.Forms.GroupBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.LvResultados = New System.Windows.Forms.ListView
        Me.ClhNombre = New System.Windows.Forms.ColumnHeader
        Me.ClhActivo = New System.Windows.Forms.ColumnHeader
        Me.MnuArbitro = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.NuevoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ModificarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DarDeBajaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.MnuActivar = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.GpbFiltros.SuspendLayout()
        Me.GpbResultados.SuspendLayout()
        Me.MnuArbitro.SuspendLayout()
        Me.SuspendLayout()
        '
        'GpbFiltros
        '
        Me.GpbFiltros.Controls.Add(Me.BtnBuscar)
        Me.GpbFiltros.Controls.Add(Me.txtNombre)
        Me.GpbFiltros.Controls.Add(Me.lblNombre)
        Me.GpbFiltros.Location = New System.Drawing.Point(12, 10)
        Me.GpbFiltros.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbFiltros.Name = "GpbFiltros"
        Me.GpbFiltros.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbFiltros.Size = New System.Drawing.Size(557, 90)
        Me.GpbFiltros.TabIndex = 0
        Me.GpbFiltros.TabStop = False
        '
        'BtnBuscar
        '
        Me.BtnBuscar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnBuscar.Image = CType(resources.GetObject("BtnBuscar.Image"), System.Drawing.Image)
        Me.BtnBuscar.Location = New System.Drawing.Point(464, 45)
        Me.BtnBuscar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.BtnBuscar.Name = "BtnBuscar"
        Me.BtnBuscar.Size = New System.Drawing.Size(74, 32)
        Me.BtnBuscar.TabIndex = 2
        Me.BtnBuscar.UseVisualStyleBackColor = False
        '
        'txtNombre
        '
        Me.txtNombre.Location = New System.Drawing.Point(17, 49)
        Me.txtNombre.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(433, 25)
        Me.txtNombre.TabIndex = 1
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(17, 23)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(57, 20)
        Me.lblNombre.TabIndex = 0
        Me.lblNombre.Text = "Nombre:"
        '
        'GpbResultados
        '
        Me.GpbResultados.Controls.Add(Me.Label1)
        Me.GpbResultados.Controls.Add(Me.LvResultados)
        Me.GpbResultados.Location = New System.Drawing.Point(12, 107)
        Me.GpbResultados.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbResultados.Name = "GpbResultados"
        Me.GpbResultados.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbResultados.Size = New System.Drawing.Size(557, 371)
        Me.GpbResultados.TabIndex = 1
        Me.GpbResultados.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(17, 23)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(74, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Resultados:"
        '
        'LvResultados
        '
        Me.LvResultados.AllowColumnReorder = True
        Me.LvResultados.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ClhNombre, Me.ClhActivo})
        Me.LvResultados.ContextMenuStrip = Me.MnuArbitro
        Me.LvResultados.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LvResultados.FullRowSelect = True
        Me.LvResultados.GridLines = True
        Me.LvResultados.Location = New System.Drawing.Point(20, 48)
        Me.LvResultados.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.LvResultados.MultiSelect = False
        Me.LvResultados.Name = "LvResultados"
        Me.LvResultados.Size = New System.Drawing.Size(519, 316)
        Me.LvResultados.Sorting = System.Windows.Forms.SortOrder.Ascending
        Me.LvResultados.TabIndex = 0
        Me.ToolTip1.SetToolTip(Me.LvResultados, "Haga click con el botón derecho del mouse para agregar, modificar o eliminar ")
        Me.LvResultados.UseCompatibleStateImageBehavior = False
        Me.LvResultados.View = System.Windows.Forms.View.Details
        '
        'ClhNombre
        '
        Me.ClhNombre.Text = "Nombre"
        Me.ClhNombre.Width = 440
        '
        'ClhActivo
        '
        Me.ClhActivo.Text = "Activo"
        Me.ClhActivo.Width = 75
        '
        'MnuArbitro
        '
        Me.MnuArbitro.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevoToolStripMenuItem, Me.ModificarToolStripMenuItem, Me.DarDeBajaToolStripMenuItem, Me.MnuActivar})
        Me.MnuArbitro.Name = "ContextMenuStrip1"
        Me.MnuArbitro.Size = New System.Drawing.Size(134, 92)
        '
        'NuevoToolStripMenuItem
        '
        Me.NuevoToolStripMenuItem.Name = "NuevoToolStripMenuItem"
        Me.NuevoToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.NuevoToolStripMenuItem.Text = "Nuevo"
        '
        'ModificarToolStripMenuItem
        '
        Me.ModificarToolStripMenuItem.Name = "ModificarToolStripMenuItem"
        Me.ModificarToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.ModificarToolStripMenuItem.Text = "Modificar"
        '
        'DarDeBajaToolStripMenuItem
        '
        Me.DarDeBajaToolStripMenuItem.Name = "DarDeBajaToolStripMenuItem"
        Me.DarDeBajaToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.DarDeBajaToolStripMenuItem.Text = "Dar de Baja"
        '
        'MnuActivar
        '
        Me.MnuActivar.Name = "MnuActivar"
        Me.MnuActivar.Size = New System.Drawing.Size(133, 22)
        Me.MnuActivar.Text = "Activar"
        '
        'FrmArbitros
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(581, 486)
        Me.Controls.Add(Me.GpbResultados)
        Me.Controls.Add(Me.GpbFiltros)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.Name = "FrmArbitros"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Catálogo de Arbitros"
        Me.GpbFiltros.ResumeLayout(False)
        Me.GpbFiltros.PerformLayout()
        Me.GpbResultados.ResumeLayout(False)
        Me.GpbResultados.PerformLayout()
        Me.MnuArbitro.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GpbFiltros As System.Windows.Forms.GroupBox
    Friend WithEvents GpbResultados As System.Windows.Forms.GroupBox
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents BtnBuscar As System.Windows.Forms.Button
    Friend WithEvents LvResultados As System.Windows.Forms.ListView
    Friend WithEvents ClhNombre As System.Windows.Forms.ColumnHeader
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents MnuArbitro As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents NuevoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ModificarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DarDeBajaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents ClhActivo As System.Windows.Forms.ColumnHeader
    Friend WithEvents MnuActivar As System.Windows.Forms.ToolStripMenuItem
End Class
