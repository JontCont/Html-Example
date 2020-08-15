
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim title As String = txtTitle.Text
        ' 轉址且傳遞URL參數至Ch9_3_3.aspx
        Response.Redirect("Ch9_3_3.aspx?Title=" & title)
    End Sub
End Class
