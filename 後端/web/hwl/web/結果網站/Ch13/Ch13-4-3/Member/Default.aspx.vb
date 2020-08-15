
Partial Class Member_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            lblOutput.Text = Profile.Name
            txtName.Text = Profile.Name
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If txtName.Text <> "" Then
            Profile.Name = txtName.Text
            Response.Redirect("Ch13_4_3.aspx")
        End If
    End Sub
End Class
