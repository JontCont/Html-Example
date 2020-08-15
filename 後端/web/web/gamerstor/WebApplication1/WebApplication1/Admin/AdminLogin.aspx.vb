Public Class AdminLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        SignOutButton.Visible = False
        If (Session("datauser") <> "") Then
            SignOutButton.Visible = True
            Viewname.Text = Session("datauser")
        End If
    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click

        Viewname.Text = ""
        SignOutButton.Visible = False
        Session.Abandon()
        Response.Redirect("../Index_meun/WebSign_in.aspx")
    End Sub
End Class