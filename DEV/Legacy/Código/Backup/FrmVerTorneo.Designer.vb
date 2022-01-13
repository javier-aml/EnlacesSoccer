<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmVerTorneo
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmVerTorneo))
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle6 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.cmbJornadas = New System.Windows.Forms.ComboBox
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.lblJornada = New System.Windows.Forms.Label
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.lblEquipoDescansa = New System.Windows.Forms.Label
        Me.lblDescansa = New System.Windows.Forms.Label
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.NombreEquipo1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Resultado = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.NombreEquipo2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Programado = New System.Windows.Forms.DataGridViewCheckBoxColumn
        Me.Fecha = New TorneoDeacero.CalendarColumn
        Me.Hora = New TorneoDeacero.HourColumn
        Me.IdEquipo1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdEquipo2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Jugado = New System.Windows.Forms.DataGridViewCheckBoxColumn
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.btnGuardar = New System.Windows.Forms.Button
        Me.btnCancelar = New System.Windows.Forms.Button
        Me.BtnImprimir = New System.Windows.Forms.Button
        Me.BtnImprimirCedula = New System.Windows.Forms.Button
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.chkVerPendientes = New System.Windows.Forms.CheckBox
        Me.lblPartidosPendientes = New System.Windows.Forms.Label
        Me.DataGridView2 = New System.Windows.Forms.DataGridView
        Me.NomEquipo1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Resultado1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.NomEquipo2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Programado1 = New System.Windows.Forms.DataGridViewCheckBoxColumn
        Me.Fecha1 = New TorneoDeacero.CalendarColumn
        Me.Hora1 = New TorneoDeacero.HourColumn
        Me.Jornada = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdEquip1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdEquip2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Jugado1 = New System.Windows.Forms.DataGridViewCheckBoxColumn
        Me.IdJornada = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.CalendarColumn1 = New TorneoDeacero.CalendarColumn
        Me.HourColumn1 = New TorneoDeacero.HourColumn
        Me.DataGridViewTextBoxColumn4 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn5 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn6 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn7 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn8 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.CalendarColumn2 = New TorneoDeacero.CalendarColumn
        Me.HourColumn2 = New TorneoDeacero.HourColumn
        Me.DataGridViewTextBoxColumn9 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn10 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn11 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn12 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.BtnImprimirResultado = New System.Windows.Forms.Button
        Me.chkParaJunta = New System.Windows.Forms.CheckBox
        Me.GroupBox1.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(112, 16)
        Me.cmbTorneo.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(282, 28)
        Me.cmbTorneo.TabIndex = 0
        '
        'cmbJornadas
        '
        Me.cmbJornadas.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbJornadas.FormattingEnabled = True
        Me.cmbJornadas.Location = New System.Drawing.Point(112, 49)
        Me.cmbJornadas.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbJornadas.Name = "cmbJornadas"
        Me.cmbJornadas.Size = New System.Drawing.Size(157, 28)
        Me.cmbJornadas.TabIndex = 1
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Location = New System.Drawing.Point(11, 19)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 3
        Me.lblTorneo.Text = "Torneo:"
        '
        'lblJornada
        '
        Me.lblJornada.AutoSize = True
        Me.lblJornada.Location = New System.Drawing.Point(11, 52)
        Me.lblJornada.Name = "lblJornada"
        Me.lblJornada.Size = New System.Drawing.Size(57, 20)
        Me.lblJornada.TabIndex = 4
        Me.lblJornada.Text = "Jornada:"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.lblEquipoDescansa)
        Me.GroupBox1.Controls.Add(Me.lblDescansa)
        Me.GroupBox1.Controls.Add(Me.DataGridView1)
        Me.GroupBox1.Location = New System.Drawing.Point(11, 101)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(691, 287)
        Me.GroupBox1.TabIndex = 5
        Me.GroupBox1.TabStop = False
        '
        'lblEquipoDescansa
        '
        Me.lblEquipoDescansa.AutoSize = True
        Me.lblEquipoDescansa.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblEquipoDescansa.Location = New System.Drawing.Point(96, 255)
        Me.lblEquipoDescansa.Name = "lblEquipoDescansa"
        Me.lblEquipoDescansa.Size = New System.Drawing.Size(50, 20)
        Me.lblEquipoDescansa.TabIndex = 9
        Me.lblEquipoDescansa.Text = "Label1"
        '
        'lblDescansa
        '
        Me.lblDescansa.AutoSize = True
        Me.lblDescansa.Location = New System.Drawing.Point(19, 255)
        Me.lblDescansa.Name = "lblDescansa"
        Me.lblDescansa.Size = New System.Drawing.Size(71, 20)
        Me.lblDescansa.TabIndex = 6
        Me.lblDescansa.Text = "Descansa: "
        Me.lblDescansa.Visible = False
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.AllowUserToResizeColumns = False
        Me.DataGridView1.AllowUserToResizeRows = False
        Me.DataGridView1.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.NombreEquipo1, Me.Resultado, Me.NombreEquipo2, Me.Programado, Me.Fecha, Me.Hora, Me.IdEquipo1, Me.IdEquipo2, Me.Jugado})
        Me.DataGridView1.Location = New System.Drawing.Point(15, 21)
        Me.DataGridView1.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.RowHeadersVisible = False
        Me.DataGridView1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DataGridView1.Size = New System.Drawing.Size(663, 225)
        Me.DataGridView1.TabIndex = 3
        '
        'NombreEquipo1
        '
        Me.NombreEquipo1.HeaderText = "Partido"
        Me.NombreEquipo1.Name = "NombreEquipo1"
        Me.NombreEquipo1.ReadOnly = True
        Me.NombreEquipo1.Width = 140
        '
        'Resultado
        '
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.Resultado.DefaultCellStyle = DataGridViewCellStyle1
        Me.Resultado.HeaderText = ""
        Me.Resultado.Name = "Resultado"
        Me.Resultado.ReadOnly = True
        Me.Resultado.Width = 80
        '
        'NombreEquipo2
        '
        Me.NombreEquipo2.HeaderText = ""
        Me.NombreEquipo2.Name = "NombreEquipo2"
        Me.NombreEquipo2.ReadOnly = True
        Me.NombreEquipo2.Width = 140
        '
        'Programado
        '
        Me.Programado.HeaderText = "Programado"
        Me.Programado.Name = "Programado"
        '
        'Fecha
        '
        Me.Fecha.HeaderText = "Fecha"
        Me.Fecha.Name = "Fecha"
        '
        'Hora
        '
        Me.Hora.HeaderText = "Hora"
        Me.Hora.Name = "Hora"
        '
        'IdEquipo1
        '
        Me.IdEquipo1.HeaderText = "IdEquipo1"
        Me.IdEquipo1.Name = "IdEquipo1"
        Me.IdEquipo1.Visible = False
        '
        'IdEquipo2
        '
        Me.IdEquipo2.HeaderText = "IdEquipo2"
        Me.IdEquipo2.Name = "IdEquipo2"
        Me.IdEquipo2.Visible = False
        '
        'Jugado
        '
        Me.Jugado.HeaderText = "Jugado"
        Me.Jugado.Name = "Jugado"
        Me.Jugado.Resizable = System.Windows.Forms.DataGridViewTriState.[True]
        Me.Jugado.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic
        Me.Jugado.Visible = False
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.lblTorneo)
        Me.GroupBox2.Controls.Add(Me.cmbTorneo)
        Me.GroupBox2.Controls.Add(Me.lblJornada)
        Me.GroupBox2.Controls.Add(Me.cmbJornadas)
        Me.GroupBox2.Location = New System.Drawing.Point(11, 2)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(691, 91)
        Me.GroupBox2.TabIndex = 8
        Me.GroupBox2.TabStop = False
        '
        'btnGuardar
        '
        Me.btnGuardar.BackColor = System.Drawing.SystemColors.Control
        Me.btnGuardar.Image = CType(resources.GetObject("btnGuardar.Image"), System.Drawing.Image)
        Me.btnGuardar.Location = New System.Drawing.Point(535, 545)
        Me.btnGuardar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.btnGuardar.Name = "btnGuardar"
        Me.btnGuardar.Size = New System.Drawing.Size(74, 32)
        Me.btnGuardar.TabIndex = 19
        Me.btnGuardar.UseVisualStyleBackColor = False
        '
        'btnCancelar
        '
        Me.btnCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.btnCancelar.Image = CType(resources.GetObject("btnCancelar.Image"), System.Drawing.Image)
        Me.btnCancelar.Location = New System.Drawing.Point(615, 545)
        Me.btnCancelar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.btnCancelar.Name = "btnCancelar"
        Me.btnCancelar.Size = New System.Drawing.Size(74, 32)
        Me.btnCancelar.TabIndex = 18
        Me.btnCancelar.UseVisualStyleBackColor = False
        '
        'BtnImprimir
        '
        Me.BtnImprimir.Image = Global.TorneoDeacero.My.Resources.Resources.print16
        Me.BtnImprimir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.BtnImprimir.Location = New System.Drawing.Point(223, 545)
        Me.BtnImprimir.Name = "BtnImprimir"
        Me.BtnImprimir.Size = New System.Drawing.Size(98, 32)
        Me.BtnImprimir.TabIndex = 20
        Me.BtnImprimir.Text = "Calendario"
        Me.BtnImprimir.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.BtnImprimir.UseVisualStyleBackColor = True
        '
        'BtnImprimirCedula
        '
        Me.BtnImprimirCedula.Image = Global.TorneoDeacero.My.Resources.Resources.print16
        Me.BtnImprimirCedula.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.BtnImprimirCedula.Location = New System.Drawing.Point(431, 545)
        Me.BtnImprimirCedula.Name = "BtnImprimirCedula"
        Me.BtnImprimirCedula.Size = New System.Drawing.Size(84, 32)
        Me.BtnImprimirCedula.TabIndex = 21
        Me.BtnImprimirCedula.Text = "Cedula"
        Me.BtnImprimirCedula.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.BtnImprimirCedula.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.chkVerPendientes)
        Me.GroupBox3.Controls.Add(Me.lblPartidosPendientes)
        Me.GroupBox3.Controls.Add(Me.DataGridView2)
        Me.GroupBox3.Location = New System.Drawing.Point(11, 396)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(691, 143)
        Me.GroupBox3.TabIndex = 22
        Me.GroupBox3.TabStop = False
        '
        'chkVerPendientes
        '
        Me.chkVerPendientes.AutoSize = True
        Me.chkVerPendientes.Location = New System.Drawing.Point(199, 19)
        Me.chkVerPendientes.Name = "chkVerPendientes"
        Me.chkVerPendientes.Size = New System.Drawing.Size(111, 24)
        Me.chkVerPendientes.TabIndex = 35
        Me.chkVerPendientes.Text = "Ver Pendientes"
        Me.chkVerPendientes.UseVisualStyleBackColor = True
        '
        'lblPartidosPendientes
        '
        Me.lblPartidosPendientes.AutoSize = True
        Me.lblPartidosPendientes.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblPartidosPendientes.Location = New System.Drawing.Point(17, 20)
        Me.lblPartidosPendientes.Name = "lblPartidosPendientes"
        Me.lblPartidosPendientes.Size = New System.Drawing.Size(135, 20)
        Me.lblPartidosPendientes.TabIndex = 34
        Me.lblPartidosPendientes.Text = "Partidos Pendientes:"
        '
        'DataGridView2
        '
        Me.DataGridView2.AllowUserToAddRows = False
        Me.DataGridView2.AllowUserToDeleteRows = False
        Me.DataGridView2.AllowUserToResizeColumns = False
        Me.DataGridView2.AllowUserToResizeRows = False
        Me.DataGridView2.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView2.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.NomEquipo1, Me.Resultado1, Me.NomEquipo2, Me.Programado1, Me.Fecha1, Me.Hora1, Me.Jornada, Me.IdEquip1, Me.IdEquip2, Me.Jugado1, Me.IdJornada})
        Me.DataGridView2.Location = New System.Drawing.Point(13, 45)
        Me.DataGridView2.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.DataGridView2.Name = "DataGridView2"
        Me.DataGridView2.RowHeadersVisible = False
        Me.DataGridView2.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DataGridView2.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DataGridView2.Size = New System.Drawing.Size(665, 93)
        Me.DataGridView2.TabIndex = 33
        Me.DataGridView2.Visible = False
        '
        'NomEquipo1
        '
        Me.NomEquipo1.HeaderText = "Partido"
        Me.NomEquipo1.Name = "NomEquipo1"
        Me.NomEquipo1.ReadOnly = True
        Me.NomEquipo1.Width = 120
        '
        'Resultado1
        '
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.Resultado1.DefaultCellStyle = DataGridViewCellStyle2
        Me.Resultado1.HeaderText = ""
        Me.Resultado1.Name = "Resultado1"
        Me.Resultado1.ReadOnly = True
        Me.Resultado1.Width = 60
        '
        'NomEquipo2
        '
        Me.NomEquipo2.HeaderText = ""
        Me.NomEquipo2.Name = "NomEquipo2"
        Me.NomEquipo2.ReadOnly = True
        Me.NomEquipo2.Width = 120
        '
        'Programado1
        '
        Me.Programado1.HeaderText = "Programado"
        Me.Programado1.Name = "Programado1"
        Me.Programado1.Width = 90
        '
        'Fecha1
        '
        Me.Fecha1.HeaderText = "Fecha"
        Me.Fecha1.Name = "Fecha1"
        Me.Fecha1.Width = 90
        '
        'Hora1
        '
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.Hora1.DefaultCellStyle = DataGridViewCellStyle3
        Me.Hora1.HeaderText = "Hora"
        Me.Hora1.Name = "Hora1"
        Me.Hora1.Resizable = System.Windows.Forms.DataGridViewTriState.[True]
        Me.Hora1.Width = 90
        '
        'Jornada
        '
        Me.Jornada.HeaderText = "Jornada"
        Me.Jornada.Name = "Jornada"
        Me.Jornada.ReadOnly = True
        Me.Jornada.Width = 75
        '
        'IdEquip1
        '
        Me.IdEquip1.HeaderText = "IdEquipo1"
        Me.IdEquip1.Name = "IdEquip1"
        Me.IdEquip1.Visible = False
        '
        'IdEquip2
        '
        Me.IdEquip2.HeaderText = "IdEquipo2"
        Me.IdEquip2.Name = "IdEquip2"
        Me.IdEquip2.Visible = False
        '
        'Jugado1
        '
        Me.Jugado1.HeaderText = "Jugado"
        Me.Jugado1.Name = "Jugado1"
        Me.Jugado1.Visible = False
        '
        'IdJornada
        '
        Me.IdJornada.HeaderText = "IdJornada"
        Me.IdJornada.Name = "IdJornada"
        Me.IdJornada.Visible = False
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "Equipo"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.ReadOnly = True
        Me.DataGridViewTextBoxColumn1.Width = 140
        '
        'DataGridViewTextBoxColumn2
        '
        DataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.DataGridViewTextBoxColumn2.DefaultCellStyle = DataGridViewCellStyle4
        Me.DataGridViewTextBoxColumn2.HeaderText = "Resultado"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        Me.DataGridViewTextBoxColumn2.ReadOnly = True
        Me.DataGridViewTextBoxColumn2.Width = 80
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.HeaderText = "Equipo2"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        Me.DataGridViewTextBoxColumn3.ReadOnly = True
        Me.DataGridViewTextBoxColumn3.Width = 140
        '
        'CalendarColumn1
        '
        Me.CalendarColumn1.HeaderText = "Fecha"
        Me.CalendarColumn1.Name = "CalendarColumn1"
        '
        'HourColumn1
        '
        Me.HourColumn1.HeaderText = "Hora"
        Me.HourColumn1.Name = "HourColumn1"
        '
        'DataGridViewTextBoxColumn4
        '
        Me.DataGridViewTextBoxColumn4.HeaderText = "IdEquipo1"
        Me.DataGridViewTextBoxColumn4.Name = "DataGridViewTextBoxColumn4"
        Me.DataGridViewTextBoxColumn4.Visible = False
        '
        'DataGridViewTextBoxColumn5
        '
        Me.DataGridViewTextBoxColumn5.HeaderText = "IdEquipo2"
        Me.DataGridViewTextBoxColumn5.Name = "DataGridViewTextBoxColumn5"
        Me.DataGridViewTextBoxColumn5.Visible = False
        '
        'DataGridViewTextBoxColumn6
        '
        Me.DataGridViewTextBoxColumn6.HeaderText = "Partido"
        Me.DataGridViewTextBoxColumn6.Name = "DataGridViewTextBoxColumn6"
        Me.DataGridViewTextBoxColumn6.ReadOnly = True
        Me.DataGridViewTextBoxColumn6.Width = 120
        '
        'DataGridViewTextBoxColumn7
        '
        DataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.DataGridViewTextBoxColumn7.DefaultCellStyle = DataGridViewCellStyle5
        Me.DataGridViewTextBoxColumn7.HeaderText = ""
        Me.DataGridViewTextBoxColumn7.Name = "DataGridViewTextBoxColumn7"
        Me.DataGridViewTextBoxColumn7.ReadOnly = True
        Me.DataGridViewTextBoxColumn7.Width = 60
        '
        'DataGridViewTextBoxColumn8
        '
        Me.DataGridViewTextBoxColumn8.HeaderText = ""
        Me.DataGridViewTextBoxColumn8.Name = "DataGridViewTextBoxColumn8"
        Me.DataGridViewTextBoxColumn8.ReadOnly = True
        Me.DataGridViewTextBoxColumn8.Width = 120
        '
        'CalendarColumn2
        '
        Me.CalendarColumn2.HeaderText = "Fecha"
        Me.CalendarColumn2.Name = "CalendarColumn2"
        Me.CalendarColumn2.Width = 90
        '
        'HourColumn2
        '
        DataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        Me.HourColumn2.DefaultCellStyle = DataGridViewCellStyle6
        Me.HourColumn2.HeaderText = "Hora"
        Me.HourColumn2.Name = "HourColumn2"
        Me.HourColumn2.Resizable = System.Windows.Forms.DataGridViewTriState.[True]
        Me.HourColumn2.Width = 90
        '
        'DataGridViewTextBoxColumn9
        '
        Me.DataGridViewTextBoxColumn9.HeaderText = "Jornada"
        Me.DataGridViewTextBoxColumn9.Name = "DataGridViewTextBoxColumn9"
        Me.DataGridViewTextBoxColumn9.ReadOnly = True
        Me.DataGridViewTextBoxColumn9.Width = 75
        '
        'DataGridViewTextBoxColumn10
        '
        Me.DataGridViewTextBoxColumn10.HeaderText = "IdEquipo1"
        Me.DataGridViewTextBoxColumn10.Name = "DataGridViewTextBoxColumn10"
        Me.DataGridViewTextBoxColumn10.Visible = False
        '
        'DataGridViewTextBoxColumn11
        '
        Me.DataGridViewTextBoxColumn11.HeaderText = "IdEquipo2"
        Me.DataGridViewTextBoxColumn11.Name = "DataGridViewTextBoxColumn11"
        Me.DataGridViewTextBoxColumn11.Visible = False
        '
        'DataGridViewTextBoxColumn12
        '
        Me.DataGridViewTextBoxColumn12.HeaderText = "IdJornada"
        Me.DataGridViewTextBoxColumn12.Name = "DataGridViewTextBoxColumn12"
        Me.DataGridViewTextBoxColumn12.Visible = False
        '
        'BtnImprimirResultado
        '
        Me.BtnImprimirResultado.Image = Global.TorneoDeacero.My.Resources.Resources.print16
        Me.BtnImprimirResultado.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.BtnImprimirResultado.Location = New System.Drawing.Point(327, 545)
        Me.BtnImprimirResultado.Name = "BtnImprimirResultado"
        Me.BtnImprimirResultado.Size = New System.Drawing.Size(98, 32)
        Me.BtnImprimirResultado.TabIndex = 23
        Me.BtnImprimirResultado.Text = "Resultados"
        Me.BtnImprimirResultado.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.BtnImprimirResultado.UseVisualStyleBackColor = True
        '
        'chkParaJunta
        '
        Me.chkParaJunta.AutoSize = True
        Me.chkParaJunta.Location = New System.Drawing.Point(123, 550)
        Me.chkParaJunta.Name = "chkParaJunta"
        Me.chkParaJunta.Size = New System.Drawing.Size(87, 24)
        Me.chkParaJunta.TabIndex = 24
        Me.chkParaJunta.Text = "Para Junta"
        Me.chkParaJunta.UseVisualStyleBackColor = True
        '
        'FrmVerTorneo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(713, 591)
        Me.Controls.Add(Me.chkParaJunta)
        Me.Controls.Add(Me.BtnImprimirResultado)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.BtnImprimirCedula)
        Me.Controls.Add(Me.BtnImprimir)
        Me.Controls.Add(Me.btnGuardar)
        Me.Controls.Add(Me.btnCancelar)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.Name = "FrmVerTorneo"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Programar Horarios de Partidos"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents cmbJornadas As System.Windows.Forms.ComboBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents lblJornada As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents lblDescansa As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents lblEquipoDescansa As System.Windows.Forms.Label
    Friend WithEvents btnGuardar As System.Windows.Forms.Button
    Friend WithEvents btnCancelar As System.Windows.Forms.Button
    Friend WithEvents BtnImprimir As System.Windows.Forms.Button
    Friend WithEvents BtnImprimirCedula As System.Windows.Forms.Button
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents CalendarColumn1 As TorneoDeacero.CalendarColumn
    Friend WithEvents DataGridView2 As System.Windows.Forms.DataGridView
    Friend WithEvents NomEquipo1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Resultado1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NomEquipo2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Programado1 As System.Windows.Forms.DataGridViewCheckBoxColumn
    Friend WithEvents Fecha1 As TorneoDeacero.CalendarColumn
    Friend WithEvents Hora1 As TorneoDeacero.HourColumn
    Friend WithEvents Jornada As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdEquip1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdEquip2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Jugado1 As System.Windows.Forms.DataGridViewCheckBoxColumn
    Friend WithEvents IdJornada As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NombreEquipo1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Resultado As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NombreEquipo2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Programado As System.Windows.Forms.DataGridViewCheckBoxColumn
    Friend WithEvents Fecha As TorneoDeacero.CalendarColumn
    Friend WithEvents Hora As TorneoDeacero.HourColumn
    Friend WithEvents IdEquipo1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdEquipo2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Jugado As System.Windows.Forms.DataGridViewCheckBoxColumn
    Friend WithEvents lblPartidosPendientes As System.Windows.Forms.Label
    Friend WithEvents HourColumn1 As TorneoDeacero.HourColumn
    Friend WithEvents DataGridViewTextBoxColumn4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn5 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn6 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn7 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn8 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents CalendarColumn2 As TorneoDeacero.CalendarColumn
    Friend WithEvents HourColumn2 As TorneoDeacero.HourColumn
    Friend WithEvents DataGridViewTextBoxColumn9 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn10 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn11 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn12 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents BtnImprimirResultado As System.Windows.Forms.Button
    Friend WithEvents chkVerPendientes As System.Windows.Forms.CheckBox
    Friend WithEvents chkParaJunta As System.Windows.Forms.CheckBox
End Class
