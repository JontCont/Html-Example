
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.Title = "Ch4-4-1"
        ltlOutput.Text = "從頭開始"
        lblTitle.BackColor = System.Drawing.Color.Yellow
    End Sub
End Class
