Imports System.Data
Imports System.Data.SqlClient

Public Class WebSign_in
    Inherits System.Web.UI.Page

    Dim objCon As SqlConnection
    Dim objCmd As SqlCommand
    Dim strDbCon, strSQL As String
    'Dim count As Integer
    Dim ds As DataSet
    Dim sda As SqlDataAdapter
    'Dim dr As SqlDataReader

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        strDbCon = "Data Source=(LocalDB)\MSSQLLocalDB;" &
            "AttachDbFilename=" &
            "D:\ProgramData\gamerstor\WebApplication1\WebApplication1\App_Data\Delight.mdf" &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()   ' 開啟資料庫連接

        objCmd.CommandText = "select* from register where userName='" + txtUsername.Text + "'and password='" + txtPassword.Text + "'"
        objCmd.Connection = objCon
        sda.SelectCommand = objCmd
        sda.Fill(ds, "register")

        If (ds.Tables(0).Rows.Count) Then
            Response.Write("Login !!")
        Else
            Response.Write("invalid")
        End If
    End Sub

    Private con As SqlConnection
End Class