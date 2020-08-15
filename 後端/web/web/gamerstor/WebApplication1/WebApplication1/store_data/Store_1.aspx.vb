Public Class Store_1
    Inherits System.Web.UI.Page

    Dim name As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SignOutButton.Visible = False
        Label1.Visible = False
        If (Session("datauser") <> "") Then
            SignInButton.Visible = False
            SignOutButton.Visible = True
            Label1.Visible = True
            Viewname.Text = Session("datauser")
        End If

    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        Viewname.Text = ""
        SignOutButton.Visible = False
        Label1.Visible = False
        SignInButton.Visible = True
        Session.Abandon()

    End Sub

End Class