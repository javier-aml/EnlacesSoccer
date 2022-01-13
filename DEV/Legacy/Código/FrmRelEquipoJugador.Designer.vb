<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmRelEquipoJugador
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmRelEquipoJugador))
        Me.pnlJugadores = New System.Windows.Forms.Panel
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.dgJugadores = New System.Windows.Forms.DataGridView
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.NuevoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem
        Me.pnlAcciones = New System.Windows.Forms.Panel
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.dgEquipoJugadores = New System.Windows.Forms.DataGridView
        Me.pnlJugadoresEquipo = New System.Windows.Forms.Panel
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.cmbEquipos = New System.Windows.Forms.ComboBox
        Me.lblEquipo = New System.Windows.Forms.Label
        Me.BtnCancelar = New System.Windows.Forms.Button
        Me.BtnGuardar = New System.Windows.Forms.Button
        Me.ModificarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.BtnReporteCredenciales = New System.Windows.Forms.Button
        Me.pnlJugadores.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgJugadores, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.pnlAcciones.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dgEquipoJugadores, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.pnlJugadoresEquipo.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.SuspendLayout()
        '
        'pnlJugadores
        '
        Me.pnlJugadores.Controls.Add(Me.GroupBox1)
        Me.pnlJugadores.Location = New System.Drawing.Point(558, 92)
        Me.pnlJugadores.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.pnlJugadores.Name = "pnlJugadores"
        Me.pnlJugadores.Size = New System.Drawing.Size(489, 459)
        Me.pnlJugadores.TabIndex = 10
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.dgJugadores)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 0)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(477, 446)
        Me.GroupBox1.TabIndex = 8
        Me.GroupBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(12, 15)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(70, 20)
        Me.Label2.TabIndex = 11
        Me.Label2.Text = "Jugadores:"
        '
        'dgJugadores
        '
        Me.dgJugadores.AllowUserToAddRows = False
        Me.dgJugadores.AllowUserToDeleteRows = False
        Me.dgJugadores.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgJugadores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgJugadores.ContextMenuStrip = Me.ContextMenuStrip1
        Me.dgJugadores.Location = New System.Drawing.Point(16, 38)
        Me.dgJugadores.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.dgJugadores.Name = "dgJugadores"
        Me.dgJugadores.ReadOnly = True
        Me.dgJugadores.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgJugadores.Size = New System.Drawing.Size(446, 390)
        Me.dgJugadores.TabIndex = 9
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevoToolStripMenuItem, Me.ToolStripMenuItem1})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(126, 48)
        '
        'NuevoToolStripMenuItem
        '
        Me.NuevoToolStripMenuItem.Name = "NuevoToolStripMenuItem"
        Me.NuevoToolStripMenuItem.Size = New System.Drawing.Size(125, 22)
        Me.NuevoToolStripMenuItem.Text = "Nuevo"
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(125, 22)
        Me.ToolStripMenuItem1.Text = "Modificar"
        '
        'pnlAcciones
        '
        Me.pnlAcciones.Controls.Add(Me.Button2)
        Me.pnlAcciones.Controls.Add(Me.Button1)
        Me.pnlAcciones.Location = New System.Drawing.Point(498, 130)
        Me.pnlAcciones.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.pnlAcciones.Name = "pnlAcciones"
        Me.pnlAcciones.Size = New System.Drawing.Size(33, 408)
        Me.pnlAcciones.TabIndex = 13
        '
        'Button2
        '
        Me.Button2.FlatAppearance.BorderSize = 0
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button2.Image = Global.EnlacesSoccer.My.Resources.Resources.last
        Me.Button2.Location = New System.Drawing.Point(3, 255)
        Me.Button2.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(27, 35)
        Me.Button2.TabIndex = 3
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.FlatAppearance.BorderSize = 0
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button1.Image = Global.EnlacesSoccer.My.Resources.Resources.first
        Me.Button1.Location = New System.Drawing.Point(3, 112)
        Me.Button1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(27, 35)
        Me.Button1.TabIndex = 2
        Me.Button1.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Controls.Add(Me.dgEquipoJugadores)
        Me.GroupBox2.Location = New System.Drawing.Point(0, 0)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Size = New System.Drawing.Size(463, 446)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(12, 15)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(141, 20)
        Me.Label3.TabIndex = 12
        Me.Label3.Text = "Jugadores en el equipo:"
        '
        'dgEquipoJugadores
        '
        Me.dgEquipoJugadores.AllowUserToAddRows = False
        Me.dgEquipoJugadores.AllowUserToDeleteRows = False
        Me.dgEquipoJugadores.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgEquipoJugadores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgEquipoJugadores.Location = New System.Drawing.Point(9, 38)
        Me.dgEquipoJugadores.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.dgEquipoJugadores.Name = "dgEquipoJugadores"
        Me.dgEquipoJugadores.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgEquipoJugadores.Size = New System.Drawing.Size(439, 393)
        Me.dgEquipoJugadores.TabIndex = 1
        '
        'pnlJugadoresEquipo
        '
        Me.pnlJugadoresEquipo.Controls.Add(Me.GroupBox2)
        Me.pnlJugadoresEquipo.Location = New System.Drawing.Point(3, 92)
        Me.pnlJugadoresEquipo.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.pnlJugadoresEquipo.Name = "pnlJugadoresEquipo"
        Me.pnlJugadoresEquipo.Size = New System.Drawing.Size(470, 460)
        Me.pnlJugadoresEquipo.TabIndex = 12
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.TextBox1)
        Me.GroupBox3.Location = New System.Drawing.Point(561, 5)
        Me.GroupBox3.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox3.Size = New System.Drawing.Size(477, 92)
        Me.GroupBox3.TabIndex = 15
        Me.GroupBox3.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 24)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(122, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Nombre del jugador:"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(141, 19)
        Me.TextBox1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(320, 25)
        Me.TextBox1.TabIndex = 0
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.cmbTorneo)
        Me.GroupBox4.Controls.Add(Me.lblTorneo)
        Me.GroupBox4.Controls.Add(Me.cmbEquipos)
        Me.GroupBox4.Controls.Add(Me.lblEquipo)
        Me.GroupBox4.Location = New System.Drawing.Point(3, 5)
        Me.GroupBox4.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox4.Size = New System.Drawing.Size(463, 92)
        Me.GroupBox4.TabIndex = 16
        Me.GroupBox4.TabStop = False
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(73, 18)
        Me.cmbTorneo.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(286, 28)
        Me.cmbTorneo.TabIndex = 7
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Location = New System.Drawing.Point(12, 22)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 6
        Me.lblTorneo.Text = "Torneo:"
        '
        'cmbEquipos
        '
        Me.cmbEquipos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbEquipos.FormattingEnabled = True
        Me.cmbEquipos.Location = New System.Drawing.Point(73, 53)
        Me.cmbEquipos.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbEquipos.Name = "cmbEquipos"
        Me.cmbEquipos.Size = New System.Drawing.Size(286, 28)
        Me.cmbEquipos.TabIndex = 5
        '
        'lblEquipo
        '
        Me.lblEquipo.AutoSize = True
        Me.lblEquipo.Location = New System.Drawing.Point(10, 58)
        Me.lblEquipo.Name = "lblEquipo"
        Me.lblEquipo.Size = New System.Drawing.Size(57, 20)
        Me.lblEquipo.TabIndex = 4
        Me.lblEquipo.Text = "Equipos:"
        '
        'BtnCancelar
        '
        Me.BtnCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnCancelar.Image = CType(resources.GetObject("BtnCancelar.Image"), System.Drawing.Image)
        Me.BtnCancelar.Location = New System.Drawing.Point(949, 551)
        Me.BtnCancelar.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.BtnCancelar.Name = "BtnCancelar"
        Me.BtnCancelar.Size = New System.Drawing.Size(74, 32)
        Me.BtnCancelar.TabIndex = 18
        Me.ToolTip1.SetToolTip(Me.BtnCancelar, "Cancelar")
        Me.BtnCancelar.UseVisualStyleBackColor = False
        '
        'BtnGuardar
        '
        Me.BtnGuardar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnGuardar.Image = CType(resources.GetObject("BtnGuardar.Image"), System.Drawing.Image)
        Me.BtnGuardar.Location = New System.Drawing.Point(840, 551)
        Me.BtnGuardar.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.BtnGuardar.Name = "BtnGuardar"
        Me.BtnGuardar.Size = New System.Drawing.Size(74, 32)
        Me.BtnGuardar.TabIndex = 17
        Me.ToolTip1.SetToolTip(Me.BtnGuardar, "Guardar")
        Me.BtnGuardar.UseVisualStyleBackColor = False
        '
        'ModificarToolStripMenuItem
        '
        Me.ModificarToolStripMenuItem.Name = "ModificarToolStripMenuItem"
        Me.ModificarToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.ModificarToolStripMenuItem.Text = "Modificar"
        '
        'BtnReporteCredenciales
        '
        Me.BtnReporteCredenciales.BackColor = System.Drawing.SystemColors.Control
        Me.BtnReporteCredenciales.Image = CType(resources.GetObject("BtnReporteCredenciales.Image"), System.Drawing.Image)
        Me.BtnReporteCredenciales.Location = New System.Drawing.Point(736, 551)
        Me.BtnReporteCredenciales.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.BtnReporteCredenciales.Name = "BtnReporteCredenciales"
        Me.BtnReporteCredenciales.Size = New System.Drawing.Size(74, 32)
        Me.BtnReporteCredenciales.TabIndex = 19
        Me.ToolTip1.SetToolTip(Me.BtnReporteCredenciales, "Imprimir Credenciales")
        Me.BtnReporteCredenciales.UseVisualStyleBackColor = False
        '
        'FrmRelEquipoJugador
        '
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(1046, 586)
        Me.Controls.Add(Me.BtnReporteCredenciales)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.pnlJugadores)
        Me.Controls.Add(Me.BtnCancelar)
        Me.Controls.Add(Me.pnlJugadoresEquipo)
        Me.Controls.Add(Me.BtnGuardar)
        Me.Controls.Add(Me.pnlAcciones)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.Name = "FrmRelEquipoJugador"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Asociar Jugadores a Equipos"
        Me.pnlJugadores.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.dgJugadores, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.pnlAcciones.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.dgEquipoJugadores, System.ComponentModel.ISupportInitialize).EndInit()
        Me.pnlJugadoresEquipo.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents pnlJugadores As System.Windows.Forms.Panel
    Friend WithEvents pnlAcciones As System.Windows.Forms.Panel
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dgJugadores As System.Windows.Forms.DataGridView
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents dgEquipoJugadores As System.Windows.Forms.DataGridView
    Friend WithEvents pnlJugadoresEquipo As System.Windows.Forms.Panel
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents cmbEquipos As System.Windows.Forms.ComboBox
    Friend WithEvents lblEquipo As System.Windows.Forms.Label
    Friend WithEvents BtnCancelar As System.Windows.Forms.Button
    Friend WithEvents BtnGuardar As System.Windows.Forms.Button
    Friend WithEvents ModificarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents NuevoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents BtnReporteCredenciales As System.Windows.Forms.Button
End Class
