
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim name As String = txtUser.Text
        Dim pass As String = txtPass.Text
        ' 轉址且傳遞URL參數至Ch7_3_1.aspx
        Response.Redirect("Ch7_3_1.aspx?User=" &
         Server.UrlEncode(name) & "&Pass= " & pass)
    End Sub
End Class
