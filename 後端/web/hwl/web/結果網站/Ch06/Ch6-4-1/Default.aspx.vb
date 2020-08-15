
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim title As String = "轉址功能："
        Response.Write(title & "<br/>")
        Response.Write("歡迎使用ASP.NET程式設計<br/>")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect(txtURL.Text)
    End Sub
End Class
