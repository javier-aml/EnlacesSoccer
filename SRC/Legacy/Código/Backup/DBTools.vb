Public Class DBTools

    Private connStr As String
    Public conn As New Data.SqlClient.SqlConnection
    Public Property connectionString() As String
        Get
            connectionString = connStr
        End Get
        Set(ByVal Value As String)
            connStr = Value
            conn.ConnectionString = connStr
        End Set
    End Property
    Public Sub New()
        'connStr = "Data Source=DCS-JCALDERONV\SQLEXPRESS;Initial Catalog=TorneoDEACERO;User ID=sa;Password=admin"
        'conn.ConnectionString() = connStr
        conn = Conexion.Conexion
    End Sub
    Public Function EjecutaCommandoTabla(ByVal cmd As SqlClient.SqlCommand, ByVal nombre As String) As DataTable
        cmd.Connection = conn
        Dim dadt As New SqlClient.SqlDataAdapter
        Try
            'conn.Open()
            'cmd.CommandText = "set dateformat dmy " & cmd.CommandText
            dadt.SelectCommand = cmd
            EjecutaCommandoTabla = New DataTable(nombre)
            dadt.Fill(EjecutaCommandoTabla)
        Catch
            Throw New Exception("Error al crear una tabla " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function


    Public Function EjecutaCommandoDataSet(ByVal cmd As SqlClient.SqlCommand, ByVal nombre As String) As DataSet
        cmd.Connection = conn
        Dim dadt As New SqlClient.SqlDataAdapter
        Try
            'conn.Open()
            'cmd.CommandText = "set dateformat dmy " & cmd.CommandText
            dadt.SelectCommand = cmd
            EjecutaCommandoDataSet = New DataSet(nombre)
            dadt.Fill(EjecutaCommandoDataSet)
        Catch
            Throw New Exception("Error al crear el DataSet " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function

    Public Sub ejecutaComandoQuery(ByVal cmd As SqlClient.SqlCommand)
        cmd.Connection = conn
        Try
            'conn.Open()
            'cmd.CommandText = "set dateformat dmy " & cmd.CommandText
            cmd.ExecuteNonQuery()
        Catch
            Throw New Exception("Error al ejecutar el siguiente comando " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Sub
    Public Function ejecutaComandoRenglon(ByVal cmd As SqlClient.SqlCommand, ByVal nombre As String) As DataRow
        cmd.Connection = conn
        Dim dadt As New SqlClient.SqlDataAdapter
        Dim tabla As DataTable
        Try
            'conn.Open()
            'cmd.CommandText = "set dateformat dmy " & cmd.CommandText
            dadt.SelectCommand = cmd
            tabla = New DataTable(nombre)
            dadt.Fill(tabla)
            'En esta parte debo sacar el renglon de la tabla y ponerlo en un datarow
            If tabla.Rows.Count > 0 Then
                ejecutaComandoRenglon = tabla.Rows(0)
            Else
                ejecutaComandoRenglon = Nothing
            End If
        Catch
            Throw New Exception("Error al crear una tabla " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function
    Public Function NuevaClave(ByVal Tabla As String, ByVal CampoId As String) As Long
        Dim sqlCad As String
        Dim cmd As New SqlClient.SqlCommand
        Dim res As Long
        Dim obj As Object
        Try
            sqlCad = "SELECT MAX(" & CampoId & ") FROM " & Tabla
            cmd.Connection = conn
            cmd.CommandText = sqlCad
            'conn.Open()
            obj = cmd.ExecuteScalar
            If IsDBNull(obj) Then
                res = 1
            Else
                res = CType(obj, Long) + 1
                If res = 0 Then
                    res = res + 1
                End If
            End If
        Catch excep As OleDb.OleDbException
            Throw New Exception("Error al calcular la nueva clave de la tabla: " & Tabla)
            res = -1
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
            NuevaClave = res
        End Try
    End Function
    Public Function ObtenTabla(ByVal sqlCad As String, ByVal Nombre As String) As DataTable
        Dim dadt As New SqlClient.SqlDataAdapter
        Try
            'conn.Open()
            Dim cmd As New SqlClient.SqlCommand(sqlCad, conn)
            dadt.SelectCommand = cmd
            ObtenTabla = New DataTable(Nombre)
            dadt.Fill(ObtenTabla)
        Catch
            Throw New Exception("Error al crear una tabla con la siguente sentencia: " & sqlCad & " " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function
    Public Function ObtenRenglon(ByVal sqlCad As String, ByVal Nombre As String) As DataRow
        Dim dadt As New SqlClient.SqlDataAdapter
        Dim dtTemp As DataTable
        Try
            'conn.Open()
            'sqlCad = "set dateformat dmy " & sqlCad

            Dim cmd As New SqlClient.SqlCommand(sqlCad, conn)
            dadt.SelectCommand = cmd
            dtTemp = New DataTable(Nombre)
            dadt.Fill(dtTemp)
            If dtTemp.Rows.Count > 0 Then
                ObtenRenglon = dtTemp.Rows(0)
            Else
                ObtenRenglon = Nothing
            End If
        Catch
            Throw New Exception("Error al crear un renglon con la siguente sentencia: " & sqlCad & " " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function
    Public Sub EjecutaNonQuery(ByVal sqlCad As String)
        Try
            Dim cmd As New SqlClient.SqlCommand(sqlCad, conn)
            'conn.Open()
            cmd.ExecuteNonQuery()
        Catch
            Throw New Exception("Error al ejecutar el siguiente comando: " & sqlCad & " " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Sub
    Public Sub EjecutaMultiNonQuery(ByVal sqlCad() As String)
        Dim EnumX As Collections.IEnumerator = sqlCad.GetEnumerator
        'conn.Open()
        Dim cmd As New SqlClient.SqlCommand
        Dim Trans As SqlClient.SqlTransaction
        Trans = conn.BeginTransaction(IsolationLevel.ReadCommitted)
        cmd.Connection = conn
        cmd.Transaction = Trans
        Try
            While EnumX.MoveNext
                cmd.CommandText = CType(EnumX.Current, String)
                cmd.ExecuteNonQuery()
            End While
            Trans.Commit()
        Catch
            Trans.Rollback()
            Throw New Exception("Error al ejecutar el siguiente comando: " & CType(EnumX.Current, String) & " " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Sub
    Public Function EjecutaScalar(ByVal sqlCad As String) As Object
        Try
            'conn.Open()
            Dim cmd As New SqlClient.SqlCommand(sqlCad, conn)
            cmd.CommandType = CommandType.Text
            EjecutaScalar = cmd.ExecuteScalar
        Catch
            Throw New Exception("Error al ejecutar el siguiente comando (Scalar): " & sqlCad)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Function
    Public Sub EjecutaNonQuery(ByVal sqlCad As String, ByVal idUsuario As Long, Optional ByVal detalle As String = "")
        Try

            Dim cmd As New SqlClient.SqlCommand(sqlCad, conn)
            'conn.Open()
            cmd.ExecuteNonQuery()
        Catch
            Throw New Exception("Error al ejecutar el siguiente comando: " & sqlCad & " " & Err.Description)
        Finally
            If conn.State = ConnectionState.Open Then
                'conn.Close()
            End If
        End Try
    End Sub
    Public Sub ejecutaStore(ByVal proc As String, ByVal tabla As DataTable)
        Dim daMenu As New SqlClient.SqlDataAdapter(proc, conn)
        daMenu.SelectCommand.CommandType = CommandType.StoredProcedure
        'llenamos el datatable
        daMenu.Fill(tabla)
    End Sub
End Class
