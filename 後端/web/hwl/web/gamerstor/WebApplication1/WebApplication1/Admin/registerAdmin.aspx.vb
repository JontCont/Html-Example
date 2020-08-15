Imports System.Data
Imports System.Data.SqlClient
Public Class registerAdmin
    Inherits System.Web.UI.Page
    Dim objCon As SqlConnection
    Dim objCmd As SqlCommand
    Dim strDbCon, strSQL As String
    Dim count As Integer

    ' 資料庫連接字串

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        strDbCon = "Data Source=(LocalDB)\MSSQLLocalDB;" &
            "AttachDbFilename=" &
            "C:\Users\weintion\Desktop\gamerstor\WebApplication1\WebApplication1\App_Data\Delight.mdf" &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()   ' 開啟資料庫連接

    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        strSQL = "INSERT INTO Customer_account (SID,userName,password,Email,sex ) VALUES ('"
        strSQL &= txtSid.Text & "','"
        strSQL &= txtUsername.Text & "','"
        strSQL &= password1.Text & "','"
        strSQL &= txtEmail.Text & "','"
        strSQL &= txtsex.Text + "')"

        ' 建立Command物件的SQL指令
        objCmd = New SqlCommand(strSQL, objCon)
        ' 執行SQL指令
        count = objCmd.ExecuteNonQuery()
        If count <> -1 Then
            lblOutput.Text = "註冊成功"
            Response.Redirect("AdminLogin.aspx")
        Else
            lblOutput.Text = "註冊失敗: 錯誤 error:404"
        End If
    End Sub

End Class