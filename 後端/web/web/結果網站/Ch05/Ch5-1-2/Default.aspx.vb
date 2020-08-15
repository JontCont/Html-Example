
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        lblOutput.Text = "<hr/>" & Now & "<br/>" &
             txtName.Text & "說:" &
             Replace(txtMessage.Text, vbNewLine, "<br/>") &
             lblOutput.Text
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        txtName.Text = ""
        txtMessage.Text = ""
    End Sub
End Class
