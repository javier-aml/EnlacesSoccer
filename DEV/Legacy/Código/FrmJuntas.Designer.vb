<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmJuntas
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
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmJuntas))
        Me.GpbFiltros = New System.Windows.Forms.GroupBox()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CmbTorneo = New System.Windows.Forms.ComboBox()
        Me.LblTorneo = New System.Windows.Forms.Label()
        Me.btnBuscar = New System.Windows.Forms.Button()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.NuevoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ModificarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.gpbDetalles = New System.Windows.Forms.GroupBox()
        Me.dgResultados = New System.Windows.Forms.DataGridView()
        Me.txtObservaciones = New System.Windows.Forms.TextBox()
        Me.txtAcuerdos = New System.Windows.Forms.TextBox()
        Me.lblObservaciones = New System.Windows.Forms.Label()
        Me.lblAcuerdos = New System.Windows.Forms.Label()
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.GpbFiltros.SuspendLayout()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.gpbDetalles.SuspendLayout()
        CType(Me.dgResultados, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GpbFiltros
        '
        Me.GpbFiltros.Controls.Add(Me.CheckBox1)
        Me.GpbFiltros.Controls.Add(Me.CmbTorneo)
        Me.GpbFiltros.Controls.Add(Me.LblTorneo)
        Me.GpbFiltros.Controls.Add(Me.btnBuscar)
        Me.GpbFiltros.Location = New System.Drawing.Point(12, 3)
        Me.GpbFiltros.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbFiltros.Name = "GpbFiltros"
        Me.GpbFiltros.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GpbFiltros.Size = New System.Drawing.Size(517, 85)
        Me.GpbFiltros.TabIndex = 0
        Me.GpbFiltros.TabStop = False
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(365, 15)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(146, 24)
        Me.CheckBox1.TabIndex = 5
        Me.CheckBox1.Text = "Solo Juntas Jornadas"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'CmbTorneo
        '
        Me.CmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbTorneo.FormattingEnabled = True
        Me.CmbTorneo.Location = New System.Drawing.Point(12, 45)
        Me.CmbTorneo.Name = "CmbTorneo"
        Me.CmbTorneo.Size = New System.Drawing.Size(344, 28)
        Me.CmbTorneo.TabIndex = 4
        '
        'LblTorneo
        '
        Me.LblTorneo.AutoSize = True
        Me.LblTorneo.Location = New System.Drawing.Point(8, 19)
        Me.LblTorneo.Name = "LblTorneo"
        Me.LblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.LblTorneo.TabIndex = 3
        Me.LblTorneo.Text = "Torneo:"
        '
        'btnBuscar
        '
        Me.btnBuscar.Image = CType(resources.GetObject("btnBuscar.Image"), System.Drawing.Image)
        Me.btnBuscar.Location = New System.Drawing.Point(424, 42)
        Me.btnBuscar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.btnBuscar.Name = "btnBuscar"
        Me.btnBuscar.Size = New System.Drawing.Size(74, 32)
        Me.btnBuscar.TabIndex = 2
        Me.btnBuscar.UseVisualStyleBackColor = True
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevoToolStripMenuItem, Me.ModificarToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(126, 48)
        '
        'NuevoToolStripMenuItem
        '
        Me.NuevoToolStripMenuItem.Name = "NuevoToolStripMenuItem"
        Me.NuevoToolStripMenuItem.Size = New System.Drawing.Size(125, 22)
        Me.NuevoToolStripMenuItem.Text = "Nuevo"
        '
        'ModificarToolStripMenuItem
        '
        Me.ModificarToolStripMenuItem.Name = "ModificarToolStripMenuItem"
        Me.ModificarToolStripMenuItem.Size = New System.Drawing.Size(125, 22)
        Me.ModificarToolStripMenuItem.Text = "Modificar"
        '
        'gpbDetalles
        '
        Me.gpbDetalles.Controls.Add(Me.dgResultados)
        Me.gpbDetalles.Controls.Add(Me.txtObservaciones)
        Me.gpbDetalles.Controls.Add(Me.txtAcuerdos)
        Me.gpbDetalles.Controls.Add(Me.lblObservaciones)
        Me.gpbDetalles.Controls.Add(Me.lblAcuerdos)
        Me.gpbDetalles.Location = New System.Drawing.Point(12, 98)
        Me.gpbDetalles.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.gpbDetalles.Name = "gpbDetalles"
        Me.gpbDetalles.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.gpbDetalles.Size = New System.Drawing.Size(517, 266)
        Me.gpbDetalles.TabIndex = 2
        Me.gpbDetalles.TabStop = False
        '
        'dgResultados
        '
        Me.dgResultados.AllowUserToAddRows = False
        Me.dgResultados.AllowUserToDeleteRows = False
        Me.dgResultados.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgResultados.Location = New System.Drawing.Point(13, 16)
        Me.dgResultados.MultiSelect = False
        Me.dgResultados.Name = "dgResultados"
        Me.dgResultados.ReadOnly = True
        Me.dgResultados.RowHeadersVisible = False
        Me.dgResultados.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgResultados.Size = New System.Drawing.Size(485, 127)
        Me.dgResultados.TabIndex = 8
        '
        'txtObservaciones
        '
        Me.txtObservaciones.BackColor = System.Drawing.SystemColors.Control
        Me.txtObservaciones.Location = New System.Drawing.Point(258, 171)
        Me.txtObservaciones.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.txtObservaciones.MaxLength = 500
        Me.txtObservaciones.Multiline = True
        Me.txtObservaciones.Name = "txtObservaciones"
        Me.txtObservaciones.Size = New System.Drawing.Size(240, 80)
        Me.txtObservaciones.TabIndex = 7
        '
        'txtAcuerdos
        '
        Me.txtAcuerdos.Location = New System.Drawing.Point(12, 171)
        Me.txtAcuerdos.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.txtAcuerdos.MaxLength = 500
        Me.txtAcuerdos.Multiline = True
        Me.txtAcuerdos.Name = "txtAcuerdos"
        Me.txtAcuerdos.ReadOnly = True
        Me.txtAcuerdos.Size = New System.Drawing.Size(240, 80)
        Me.txtAcuerdos.TabIndex = 6
        '
        'lblObservaciones
        '
        Me.lblObservaciones.AutoSize = True
        Me.lblObservaciones.Location = New System.Drawing.Point(254, 146)
        Me.lblObservaciones.Name = "lblObservaciones"
        Me.lblObservaciones.Size = New System.Drawing.Size(95, 20)
        Me.lblObservaciones.TabIndex = 5
        Me.lblObservaciones.Text = "Observaciones:"
        '
        'lblAcuerdos
        '
        Me.lblAcuerdos.AutoSize = True
        Me.lblAcuerdos.Location = New System.Drawing.Point(9, 146)
        Me.lblAcuerdos.Name = "lblAcuerdos"
        Me.lblAcuerdos.Size = New System.Drawing.Size(64, 20)
        Me.lblAcuerdos.TabIndex = 4
        Me.lblAcuerdos.Text = "Acuerdos:"
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "Equipo"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        '
        'FrmJuntas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(541, 378)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.GpbFiltros)
        Me.Controls.Add(Me.gpbDetalles)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.Name = "FrmJuntas"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Juntas"
        Me.GpbFiltros.ResumeLayout(False)
        Me.GpbFiltros.PerformLayout()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.gpbDetalles.ResumeLayout(False)
        Me.gpbDetalles.PerformLayout()
        CType(Me.dgResultados, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GpbFiltros As System.Windows.Forms.GroupBox
    Friend WithEvents btnBuscar As System.Windows.Forms.Button
    Friend WithEvents gpbDetalles As System.Windows.Forms.GroupBox
    Friend WithEvents txtAcuerdos As System.Windows.Forms.TextBox
    Friend WithEvents lblAcuerdos As System.Windows.Forms.Label
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents NuevoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ModificarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents txtObservaciones As System.Windows.Forms.TextBox
    Friend WithEvents lblObservaciones As System.Windows.Forms.Label
    Friend WithEvents LblTorneo As System.Windows.Forms.Label
    Friend WithEvents CmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents dgResultados As System.Windows.Forms.DataGridView
End Class
