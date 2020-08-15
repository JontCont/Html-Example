
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' For/Step/Next迴圈
        Dim i, sum As Integer
        For i = 1 To 10 Step 1
            sum += i
        Next i
        lblOutput.Text = "1加到10: " & sum & "<br/>"
        ' For Each/In/Next迴圈
        Dim objName As New ArrayList
        Dim name As String
        objName.Add("陳會安")
        objName.Add("江小魚")
        objName.Add("陳允傑")
        For Each name In objName
            lblOutput.Text &= name & "<br/>"
        Next
    End Sub
End Class
