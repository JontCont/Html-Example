
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub txtInput_TextChanged(sender As Object, e As EventArgs) Handles txtInput.TextChanged
        lblOutput.Text = txtInput.Text
    End Sub
End Class
