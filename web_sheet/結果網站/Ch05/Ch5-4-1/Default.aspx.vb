
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If ddlPayment.SelectedIndex > -1 Then
            lblOutput.Text = ddlPayment.SelectedItem.Text & _
                             ddlPayment.SelectedItem.Value
        End If
    End Sub
End Class
