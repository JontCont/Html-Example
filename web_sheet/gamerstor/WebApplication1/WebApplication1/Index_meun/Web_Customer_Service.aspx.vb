Public Class Web_Customer_Service
    Inherits System.Web.UI.Page
    Dim name As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        SignOutButton.Visible = False
        Label1.Visible = False
        userpanel.Visible = False
        If (Session("datauser") <> "") Then
            SignInButton.Visible = False
            SignOutButton.Visible = True
            Label1.Visible = True
            Panel2.Visible = False
            userpanel.Visible = True
            Viewname.Text = Session("datauser")
        End If
    End Sub

    Protected Sub SignOutButton_Click(sender As Object, e As EventArgs) Handles SignOutButton.Click
        userpanel.Visible = False
        Viewname.Text = ""
        SignOutButton.Visible = False
        Label1.Visible = False
        SignInButton.Visible = True
        Panel2.Visible = True
        Session.Abandon()
    End Sub

End Class