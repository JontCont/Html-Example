
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("Title") = txtTitle.Text
        ' 轉址且傳遞URL參數至Ch9_3_4.aspx
        Response.Redirect("Ch9_3_4.aspx")
    End Sub
End Class
