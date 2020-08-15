
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim temp As String
        temp = Label1.Text
        Label1.Text = TextBox1.Text
        TextBox1.Text = temp
    End Sub
End Class
