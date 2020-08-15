
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim counter As Integer = 1
        Dim sum As Integer = 0
        ' Continue敘述
        For counter = 0 To 100
            If counter > 10 Then Exit For ' Exit敘述
            If counter Mod 2 = 0 Then Continue For
            sum += counter
        Next counter
        lblOutput.Text = "1加至10的奇數和: " & sum & "<br/>"
    End Sub
End Class
