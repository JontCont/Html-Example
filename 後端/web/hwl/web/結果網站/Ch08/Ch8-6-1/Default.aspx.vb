
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If lstNames.SelectedIndex > -1 Then
            lblOutput.Text = "選擇的學號: " &
                   lstNames.SelectedItem.Value
        End If
    End Sub
End Class
