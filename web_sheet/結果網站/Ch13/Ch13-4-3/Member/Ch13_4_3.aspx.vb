
Partial Class Member_Ch13_4_3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lblOutput.Text = Profile.Name
        End If
    End Sub
End Class
