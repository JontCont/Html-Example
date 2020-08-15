
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If pnlSwitch.Visible = True Then
            pnlSwitch.Visible = False
        Else
            pnlSwitch.Visible = True
        End If
    End Sub
End Class
