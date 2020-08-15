Public Class WebStore
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
        Session.Abandon()
    End Sub

    Protected Sub SignInButton_Click(sender As Object, e As EventArgs) Handles SignInButton.Click

    End Sub

    Protected Sub buy_btn_Click(sender As Object, e As EventArgs) Handles buy_btn.Click
        If (Session("datauser") = "") Then
            Response.Write("<script language=javascript>alert('請先登入');</" + "script>")

        End If
    End Sub
End Class