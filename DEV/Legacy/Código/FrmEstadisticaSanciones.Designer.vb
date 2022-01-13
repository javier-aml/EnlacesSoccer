<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmEstadisticaSanciones
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmEstadisticaSanciones))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.DgSancionesDetalle = New System.Windows.Forms.DataGridView
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.dgSancionesEncabezado = New System.Windows.Forms.DataGridView
        Me.BtnImprimir = New System.Windows.Forms.Button
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.DgSancionesDetalle, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgSancionesEncabezado, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.BtnImprimir)
        Me.GroupBox1.Controls.Add(Me.cmbTorneo)
        Me.GroupBox1.Controls.Add(Me.lblTorneo)
        Me.GroupBox1.Location = New System.Drawing.Point(3, -3)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(831, 78)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(73, 26)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(264, 28)
        Me.cmbTorneo.TabIndex = 6
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblTorneo.Location = New System.Drawing.Point(14, 29)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 4
        Me.lblTorneo.Text = "Torneo:"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.DgSancionesDetalle)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.dgSancionesEncabezado)
        Me.GroupBox2.Location = New System.Drawing.Point(3, 74)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox2.Size = New System.Drawing.Size(831, 509)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'DgSancionesDetalle
        '
        Me.DgSancionesDetalle.AllowUserToAddRows = False
        Me.DgSancionesDetalle.AllowUserToDeleteRows = False
        Me.DgSancionesDetalle.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DgSancionesDetalle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.DgSancionesDetalle.Location = New System.Drawing.Point(9, 317)
        Me.DgSancionesDetalle.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.DgSancionesDetalle.Name = "DgSancionesDetalle"
        Me.DgSancionesDetalle.ReadOnly = True
        Me.DgSancionesDetalle.RowHeadersVisible = False
        Me.DgSancionesDetalle.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DgSancionesDetalle.Size = New System.Drawing.Size(812, 183)
        Me.DgSancionesDetalle.TabIndex = 15
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(9, 292)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 20)
        Me.Label1.TabIndex = 14
        Me.Label1.Text = "Detalles:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(9, 17)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(71, 20)
        Me.Label2.TabIndex = 13
        Me.Label2.Text = "Sanciones:"
        '
        'dgSancionesEncabezado
        '
        Me.dgSancionesEncabezado.AllowUserToAddRows = False
        Me.dgSancionesEncabezado.AllowUserToDeleteRows = False
        Me.dgSancionesEncabezado.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.dgSancionesEncabezado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgSancionesEncabezado.Location = New System.Drawing.Point(9, 39)
        Me.dgSancionesEncabezado.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.dgSancionesEncabezado.Name = "dgSancionesEncabezado"
        Me.dgSancionesEncabezado.ReadOnly = True
        Me.dgSancionesEncabezado.RowHeadersVisible = False
        Me.dgSancionesEncabezado.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgSancionesEncabezado.Size = New System.Drawing.Size(812, 236)
        Me.dgSancionesEncabezado.TabIndex = 3
        '
        'BtnImprimir
        '
        Me.BtnImprimir.Image = Global.EnlacesSoccer.My.Resources.Resources.print16
        Me.BtnImprimir.Location = New System.Drawing.Point(392, 25)
        Me.BtnImprimir.Name = "BtnImprimir"
        Me.BtnImprimir.Size = New System.Drawing.Size(46, 28)
        Me.BtnImprimir.TabIndex = 7
        Me.BtnImprimir.UseVisualStyleBackColor = True
        '
        'FrmEstadisticaSanciones
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(836, 592)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "FrmEstadisticaSanciones"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Estadistica de sanciones"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.DgSancionesDetalle, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgSancionesEncabezado, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents dgSancionesEncabezado As System.Windows.Forms.DataGridView
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents DgSancionesDetalle As System.Windows.Forms.DataGridView
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents BtnImprimir As System.Windows.Forms.Button
End Class
