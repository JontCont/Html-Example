
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PageIndexChanged(sender As Object, e As EventArgs) Handles GridView1.PageIndexChanged
        System.Threading.Thread.Sleep(3000)
    End Sub
End Class
