Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim strDbCon, strSQL As String
        ' 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\v11.0;" &
            "AttachDbFilename=" &
            Server.MapPath("App_Data\School.mdf") &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()  ' 開啟資料庫連接
        strSQL = "SELECT * FROM Students"
        ' 建立Command物件的SQL指令
        objCmd = New SqlCommand(strSQL, objCon)
        ' 使用ExecuteScalar執行SQL指令
        lblOutput.Text = "查詢結果: " & objCmd.ExecuteScalar()
        objCon.Close()  ' 關閉資料庫連接
    End Sub
End Class
