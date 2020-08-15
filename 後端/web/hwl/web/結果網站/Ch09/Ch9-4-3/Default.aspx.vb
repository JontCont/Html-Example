
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource2.DeleteParameters(
                      "sid").DefaultValue = txtID.Text
        SqlDataSource2.Delete()
        GridView1.DataBind()
    End Sub
End Class
