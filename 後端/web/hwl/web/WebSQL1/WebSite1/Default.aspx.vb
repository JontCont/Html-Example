Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim strDbCon, strSQL As String
        Dim count As Integer
        ' 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\MSSQLLocalDB;" &
             "AttachDbFilename=" &
            Server.MapPath("App_Data\School.mdf") &
            ";Integrated Security=True"
        If Page.IsPostBack Then
            ' 建立SQL敘述新增一筆資料表記錄
            strSQL = "INSERT INTO Students (sid, name" &
                     " , tel, birthday) VALUES ('"
            strSQL &= txtID.Text & "',N'"
            strSQL &= txtName.Text & "','"
            strSQL &= txtTel.Text & "','"
            strSQL &= txtBirthday.Text + "')"
            ' 建立Connection物件
            objCon = New SqlConnection(strDbCon)
            objCon.Open()   ' 開啟資料庫連接
            ' 建立Command物件的SQL指令
            objCmd = New SqlCommand(strSQL, objCon)
            ' 執行SQL指令
            count = objCmd.ExecuteNonQuery()
            If count = 1 Then
                lblOutput.Text = "插入一筆記錄成功 :" & strSQL
            Else
                lblOutput.Text = "錯誤: 插入記錄失敗!"
            End If
            objCon.Close()    ' 關閉資料庫連接
        End If
    End Sub
End Class


'vs
'"Data Source=(LocalDB)\MSSQLLocalDB;"
'"AttachDbFilename="
'("App_Data\Delight.mdf")
'"Integrated Security=True"