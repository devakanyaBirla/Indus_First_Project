Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Web
Imports System.Web.Script.Services
Imports System.Web.Services
Imports System.Web.Services.Protocols

<System.Web.Script.Services.ScriptService()>
<WebService(Namespace:="http://tempuri.org/")>
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Public Class WebService_DemoWindow
    Inherits System.Web.Services.WebService

    Private db As Object

    Public Function OpenDataBase() As SqlConnection
        Dim i As Integer = 0
        Dim constring As String
        Dim Db As SqlConnection = Nothing
        If String.IsNullOrEmpty(constring) Then
            constring = "Data Source = DESKTOP-E0J9U3M\SQLEXPRESS;Initial Catalog=Indus_Demo;Persist Security Info=True;User ID=Indus;Password=Param@99811"
        End If
        Try
            Db = New SqlConnection(constring)
            Db.Open()
            Return Db
        Catch ex As Exception
            If i = 0 Then
                i += 1
                If Db IsNot Nothing AndAlso Db.State = ConnectionState.Open Then
                    Db.Close()
                End If
                GoTo m
            Else
                If Db IsNot Nothing AndAlso Db.State = ConnectionState.Open Then
                    Db.Close()
                End If
            End If
            Return Db
        End Try
m:
        Db = New SqlConnection(constring)
        Db.Open()
        Return Db
    End Function

    'Insert Data Into Database........................................................................................................................................................................

    <WebMethod(EnableSession:=True)>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Function Savedata(ByVal RefCode As String, ByVal unitCode As String, ByVal productionName As String, ByVal address As String, ByVal country As String,
    ByVal state As String, ByVal city As String, ByVal district As String, ByVal pincode As String, ByVal branch As String) As String
        Dim KeyField As String = ""
        Try
            Dim Db As SqlConnection = OpenDataBase()
            Dim SxistStr As String = "INSERT INTO Form_Data (unitCode, RefCode,productionName,address,country,state,city,district,pincode,branch) VALUES ('" & unitCode & "', '" & RefCode & "','" & productionName & "','" & address & "','" & country & "','" & state & "','" & city & "','" & district & "','" & pincode & "','" & branch & "')"
            Using cmd As New SqlCommand(SxistStr, Db)
                cmd.ExecuteNonQuery()
                KeyField = "success"
            End Using
            Db.Close()
        Catch ex As Exception
            KeyField = "fail: " & ex.Message
        End Try
        Return KeyField
    End Function



    'Data Fetch And Successfuly On Tables ......................................................................................................................................................

    <WebMethod(EnableSession:=True)>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Function GetData() As List(Of Dictionary(Of String, Object))
        Dim result As New List(Of Dictionary(Of String, Object))()
        Try
            Dim Db As SqlConnection = OpenDataBase()
            Dim query As String = "SELECT * FROM Form_Data"
            Using cmd As New SqlCommand(query, Db)
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                While reader.Read()
                    Dim row As New Dictionary(Of String, Object)()
                    For i As Integer = 0 To reader.FieldCount - 1
                        row.Add(reader.GetName(i), reader(i))
                    Next
                    result.Add(row)
                End While
            End Using
            Db.Close()
        Catch ex As Exception
        End Try
        Return result
    End Function


    '<WebMethod(EnableSession:=True)>
    '<ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    'Public Function GetSavedClientData() As String
    '    Dim dataTable As New DataTable()
    '    Dim query As String = "SELECT * FROM DevX_Data"

    '    ' Fill the DataTable with the query results
    '    db.FillDataTable(dataTable, query)

    '    ' Convert the DataTable to JSON and return it
    '    Return db.ConvertDataTableTojSonString(dataTable)
    'End Function



    <WebMethod(EnableSession:=True)>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Function GetSavedClientData() As String
        Dim dataTable As New DataTable()
        Dim query As String = "SELECT supplier_id,	supplierName,	mailingName,	address1,	address2,	address3,	country,	state,	city	,district,	pincode	,phone	,mobile	,email,	fax	,website,gstNo,panNo,	tallyCode,	currency,	gstApplicable,	legalName,	supplyTypeCode,	remarks,	msmeNo,	msmeStatus,	creditDays,	refCode,	bankName FROM DevX_Data"

        Try
            FillDataTable(dataTable, query)
        Catch ex As Exception
            Return "{""error"":""" & ex.Message & """}"
        End Try

        ' Convert the DataTable to JSON and return it
        Return ConvertDataTableTojSonString(dataTable)
    End Function



    <WebMethod(EnableSession:=True)>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Function DevXData(ByVal supplierName As String, ByVal mailingName As String, ByVal address1 As String, ByVal address2 As String, ByVal address3 As String, ByVal country As String, ByVal state As String, ByVal city As String, ByVal district As String, ByVal pincode As String, ByVal phone As String, ByVal mobile As String, ByVal email As String, ByVal fax As String, ByVal website As String, ByVal gstNo As String, ByVal panNo As String, ByVal tallyCode As String, ByVal currency As String, ByVal gstApplicable As String, ByVal legalName As String, ByVal supplyTypeCode As String, ByVal remarks As String, ByVal msmeNo As String, ByVal msmeStatus As String, ByVal creditDays As String, ByVal refCode As String, ByVal bankName As String) As String
        Dim KeyField As String = ""
        Try
            Dim Db As SqlConnection = OpenDataBase()
            Dim query As String = "INSERT INTO DevX_Data(supplierName, mailingName,address1,address2,address3,country,state,city,district,pincode,phone,mobile,email,fax,website,gstNo,panNo,tallyCode,currency,gstApplicable,legalName,supplyTypeCode,remarks,msmeNo,msmeStatus,creditDays,refCode,bankName) VALUES ('" & supplierName & "','" & mailingName & "','" & address1 & "','" & address2 & "','" & address3 & "','" & country & "','" & state & "','" & city & "','" & district & "','" & pincode & "','" & phone & "','" & mobile & "','" & email & "','" & fax & "','" & website & "','" & gstNo & "','" & panNo & "','" & tallyCode & "','" & currency & "','" & gstApplicable & "','" & legalName & "','" & supplyTypeCode & "','" & remarks & "','" & msmeNo & "','" & msmeStatus & "','" & creditDays & "','" & refCode & "','" & bankName & "')"
            Using cmd As New SqlCommand(query, Db)
                cmd.ExecuteNonQuery()
                KeyField = "success"
            End Using
            Db.Close()
        Catch ex As Exception
            KeyField = "fail: " & ex.Message & " - " & ex.StackTrace
        End Try
        Return KeyField
    End Function
    Public Sub FillDataTable(ByRef dataTable As DataTable, query As String)
        Dim connectionString As String = "Data Source=DESKTOP-E0J9U3M\SQLEXPRESS;Initial Catalog=Indus_Demo;Persist Security Info=True;User ID=Indus;Password=Param@99811"

        Using connection As New SqlConnection(connectionString)
            Try
                connection.Open()
                Using command As New SqlCommand(query, connection)
                    Using adapter As New SqlDataAdapter(command)
                        adapter.Fill(dataTable)
                    End Using
                End Using
            Catch ex As Exception
                ' Log the exception for detailed error information
                Throw New Exception("Error filling DataTable: " & ex.Message & " | Query: " & query)
            Finally
                connection.Close()
            End Try
        End Using
    End Sub
    Public Shared Function ConvertDataTableTojSonString(ByVal dataTable As DataTable) As String
        Dim serializer As New System.Web.Script.Serialization.JavaScriptSerializer()

        Dim tableRows As New List(Of Dictionary(Of [String], [Object]))()
        Dim row As Dictionary(Of [String], [Object])
        For Each dr As DataRow In dataTable.Rows
            row = New Dictionary(Of [String], [Object])()
            For Each col As DataColumn In dataTable.Columns
                row.Add(col.ColumnName, dr(col))
            Next
            tableRows.Add(row)
        Next
        serializer.MaxJsonLength = 2147483647
        Return serializer.Serialize(tableRows)

    End Function

    <WebMethod()>
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function





End Class