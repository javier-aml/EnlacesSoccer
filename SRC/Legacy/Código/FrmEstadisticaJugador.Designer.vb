<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmEstadisticaJugador
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmEstadisticaJugador))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.cmbTorneo = New System.Windows.Forms.ComboBox()
        Me.lblTorneo = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.dgEquipoJugadores = New System.Windows.Forms.DataGridView()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dgEquipoJugadores, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.cmbTorneo)
        Me.GroupBox1.Controls.Add(Me.lblTorneo)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 5)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(990, 62)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(69, 20)
        Me.cmbTorneo.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(502, 28)
        Me.cmbTorneo.TabIndex = 9
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Location = New System.Drawing.Point(10, 23)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 8
        Me.lblTorneo.Text = "Torneo:"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.dgEquipoJugadores)
        Me.GroupBox2.Location = New System.Drawing.Point(3, 63)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Size = New System.Drawing.Size(990, 499)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(10, 18)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(70, 20)
        Me.Label2.TabIndex = 12
        Me.Label2.Text = "Jugadores:"
        '
        'dgEquipoJugadores
        '
        Me.dgEquipoJugadores.AllowUserToAddRows = False
        Me.dgEquipoJugadores.AllowUserToDeleteRows = False
        Me.dgEquipoJugadores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgEquipoJugadores.Location = New System.Drawing.Point(9, 43)
        Me.dgEquipoJugadores.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.dgEquipoJugadores.Name = "dgEquipoJugadores"
        Me.dgEquipoJugadores.ReadOnly = True
        Me.dgEquipoJugadores.RowHeadersVisible = False
        Me.dgEquipoJugadores.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgEquipoJugadores.Size = New System.Drawing.Size(974, 445)
        Me.dgEquipoJugadores.TabIndex = 2
        '
        'FrmEstadisticaJugador
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(998, 564)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "FrmEstadisticaJugador"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Estadisticas del jugador"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.dgEquipoJugadores, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents dgEquipoJugadores As System.Windows.Forms.DataGridView
    Friend WithEvents Label2 As System.Windows.Forms.Label
End Class
