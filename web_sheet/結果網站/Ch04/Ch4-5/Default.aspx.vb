
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        lblOutput.Text = Button1.Text & ": 陳允傑"
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        lblOutput.Text = LinkButton1.Text & ": 江小魚"
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        lblOutput.Text = Button1.Text & ": 陳會安"
    End Sub
End Class
