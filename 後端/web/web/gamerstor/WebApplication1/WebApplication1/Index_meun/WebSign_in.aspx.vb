Imports System.Data
Imports System.Data.SqlClient

Public Class WebSign_in
    Inherits System.Web.UI.Page

    Dim objCon As SqlConnection
    Dim objCmd As SqlCommand
    Dim strDbCon, strSQL, datauser, LongText As String
    Dim sda As SqlDataAdapter
    Dim ds As DataSet
    Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        strDbCon = "Data Source=(LocalDB)\MSSQLLocalDB;" &
            "AttachDbFilename=" &
            "E:\GIT\web\wed_data\gamerstor\WebApplication1\WebApplication1\App_Data\Delight.mdf" &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()   ' 開啟資料庫連接

        strSQL = "select* from register where  userName='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'"

        objCmd = New SqlCommand(strSQL, objCon)
        dr = objCmd.ExecuteReader

        datauser = txtUsername.Text

    End Sub


    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        If (dr.Read) Then
            Session("datauser") = datauser
            Response.Redirect("WebStore.aspx")
        Else
            Label1.Text = "Username or password invalid "
        End If

        LongText = txtUsername.Text & txtPassword.Text

        Select Case LongText
            Case "Admin000123"
                Response.Redirect("../Admin/registerAdmin.aspx")
            Case Else
                objCon.Close()

                strDbCon = "Data Source=(LocalDB)\MSSQLLocalDB;" &
            "AttachDbFilename=" &
            "C:\Users\weintion\Desktop\gamerstor\WebApplication1\WebApplication1\App_Data\Delight.mdf" &
            ";Integrated Security=True"
                ' 建立Connection物件
                objCon = New SqlConnection(strDbCon)
                objCon.Open()   ' 開啟資料庫連接

                strSQL = "select* from Customer_account where  userName='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'"

                objCmd = New SqlCommand(strSQL, objCon)
                dr = objCmd.ExecuteReader

                If (dr.Read) Then
                    Session("datauser") = datauser
                    Response.Redirect("../Admin/AdminLogin.aspx")
                Else
                    Label1.Text = "Username or password invalid "
                End If

        End Select
    End Sub

End Class