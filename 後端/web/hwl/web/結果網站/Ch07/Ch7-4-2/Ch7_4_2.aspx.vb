
Partial Class Ch7_4_2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name As String
        ' 檢查Cookie是否存在
        If Request.Cookies("User") IsNot Nothing Then
            name = Request.Cookies("User").Value
            lblOutput.Text = "Cookie值：" & name
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dtDay As Date = DateAdd("D", -365, Today)
        Response.Cookies("User").Expires = dtDay ' 刪除Cookie
        Response.Redirect("Default.aspx")
    End Sub
End Class
