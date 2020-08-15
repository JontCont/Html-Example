
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 宣告變數和指定初值
        Dim dayValue As Integer = 5
        ' If/Then/ElseIf條件敘述
        If dayValue = 1 Then
            lblOutput.Text &= "星期日<br/>"
        ElseIf dayValue = 2 Then
            lblOutput.Text &= "星期一<br/>"
        ElseIf dayValue = 3 Then
            lblOutput.Text &= "星期二<br/>"
        ElseIf dayValue = 4 Then
            lblOutput.Text &= "星期三<br/>"
        ElseIf dayValue = 5 Then
            lblOutput.Text &= "星期四<br/>"
        ElseIf dayValue = 6 Then
            lblOutput.Text &= "星期五<br/>"
        ElseIf dayValue = 7 Then
            lblOutput.Text &= "星期六<br/>"
        Else
            lblOutput.Text &= "無法分辨是星期幾<br/>"
        End If
        ' Select Case多選一條件敘述
        Select Case dayValue
            Case 1 : lblOutput.Text &= "周日假期<br/>"
            Case 2, 3, 4 To 6
                lblOutput.Text &= "工作天<br/>"
            Case 7 : lblOutput.Text &= "周末假日<br/>"
            Case Else
                lblOutput.Text &= "無法分辨是星期幾<br/>"
        End Select
    End Sub
End Class
