<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmConsultaResultado
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmConsultaResultado))
        Me.gp1 = New System.Windows.Forms.GroupBox
        Me.BtnImprimir = New System.Windows.Forms.Button
        Me.cmbJornadas = New System.Windows.Forms.ComboBox
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.lblJornada = New System.Windows.Forms.Label
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.gp3 = New System.Windows.Forms.GroupBox
        Me.dgResultados = New System.Windows.Forms.DataGridView
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.gp1.SuspendLayout()
        Me.gp3.SuspendLayout()
        CType(Me.dgResultados, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'gp1
        '
        Me.gp1.Controls.Add(Me.BtnImprimir)
        Me.gp1.Controls.Add(Me.cmbJornadas)
        Me.gp1.Controls.Add(Me.cmbTorneo)
        Me.gp1.Controls.Add(Me.lblJornada)
        Me.gp1.Controls.Add(Me.lblTorneo)
        Me.gp1.Location = New System.Drawing.Point(12, 12)
        Me.gp1.Name = "gp1"
        Me.gp1.Size = New System.Drawing.Size(980, 60)
        Me.gp1.TabIndex = 0
        Me.gp1.TabStop = False
        '
        'BtnImprimir
        '
        Me.BtnImprimir.Image = Global.TorneoDeacero.My.Resources.Resources.print16
        Me.BtnImprimir.Location = New System.Drawing.Point(920, 17)
        Me.BtnImprimir.Name = "BtnImprimir"
        Me.BtnImprimir.Size = New System.Drawing.Size(46, 28)
        Me.BtnImprimir.TabIndex = 4
        Me.BtnImprimir.UseVisualStyleBackColor = True
        '
        'cmbJornadas
        '
        Me.cmbJornadas.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbJornadas.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.cmbJornadas.FormattingEnabled = True
        Me.cmbJornadas.Location = New System.Drawing.Point(411, 17)
        Me.cmbJornadas.Name = "cmbJornadas"
        Me.cmbJornadas.Size = New System.Drawing.Size(264, 28)
        Me.cmbJornadas.TabIndex = 3
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(66, 17)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(264, 28)
        Me.cmbTorneo.TabIndex = 2
        '
        'lblJornada
        '
        Me.lblJornada.AutoSize = True
        Me.lblJornada.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblJornada.Location = New System.Drawing.Point(348, 20)
        Me.lblJornada.Name = "lblJornada"
        Me.lblJornada.Size = New System.Drawing.Size(57, 20)
        Me.lblJornada.TabIndex = 1
        Me.lblJornada.Text = "Jornada:"
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblTorneo.Location = New System.Drawing.Point(7, 20)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 0
        Me.lblTorneo.Text = "Torneo:"
        '
        'gp3
        '
        Me.gp3.Controls.Add(Me.dgResultados)
        Me.gp3.Location = New System.Drawing.Point(12, 78)
        Me.gp3.Name = "gp3"
        Me.gp3.Size = New System.Drawing.Size(980, 415)
        Me.gp3.TabIndex = 2
        Me.gp3.TabStop = False
        '
        'dgResultados
        '
        Me.dgResultados.AllowUserToAddRows = False
        Me.dgResultados.AllowUserToDeleteRows = False
        Me.dgResultados.AllowUserToResizeColumns = False
        Me.dgResultados.AllowUserToResizeRows = False
        Me.dgResultados.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgResultados.Location = New System.Drawing.Point(11, 19)
        Me.dgResultados.Name = "dgResultados"
        Me.dgResultados.ReadOnly = True
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        DataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgResultados.RowHeadersDefaultCellStyle = DataGridViewCellStyle1
        Me.dgResultados.RowHeadersVisible = False
        Me.dgResultados.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgResultados.Size = New System.Drawing.Size(955, 381)
        Me.dgResultados.TabIndex = 0
        '
        'FrmConsultaResultado
        '
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(1012, 511)
        Me.Controls.Add(Me.gp3)
        Me.Controls.Add(Me.gp1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "FrmConsultaResultado"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Estadisticas por Jornada"
        Me.gp1.ResumeLayout(False)
        Me.gp1.PerformLayout()
        Me.gp3.ResumeLayout(False)
        CType(Me.dgResultados, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents gp1 As System.Windows.Forms.GroupBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents lblJornada As System.Windows.Forms.Label
    Friend WithEvents cmbJornadas As System.Windows.Forms.ComboBox
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents gp3 As System.Windows.Forms.GroupBox
    Friend WithEvents dgResultados As System.Windows.Forms.DataGridView
    Friend WithEvents BtnImprimir As System.Windows.Forms.Button
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
End Class
