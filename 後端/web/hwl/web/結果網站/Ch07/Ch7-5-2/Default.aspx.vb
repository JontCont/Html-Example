
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 設定Session變數
        Session("UserName") = txtUser.Text
        Session("UserPassword") = txtPass.Text
        ' 轉址到其他ASP.NET網頁
        Response.Redirect("Ch7_5_2.aspx")
    End Sub
End Class
