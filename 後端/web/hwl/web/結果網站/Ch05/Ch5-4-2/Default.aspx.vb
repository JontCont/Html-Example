
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim str As String = ""
        Dim i As Integer
        ' 取得所有選項
        For i = 0 To lstGifts.Items.Count - 1
            If lstGifts.Items(i).Selected Then
                str = str & lstGifts.Items(i).Text & "<br/>"
            End If
        Next i
        lblOutput.Text = str
    End Sub
End Class
