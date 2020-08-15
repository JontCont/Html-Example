
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim name As String = "江小魚"
        ' 新增Cookie
        Response.Cookies("User").Value = name
        Dim dtDay As Date = DateAdd("D", 10, Today)
        Response.Cookies("User").Expires = dtDay
        lblOutput.Text = "已經成功建立Cookie!"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Ch7_4_2.aspx") ' 轉址
    End Sub
End Class
