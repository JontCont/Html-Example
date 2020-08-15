
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim height As Double = CDbl(txtHeight.Text) / 100.0
        Dim weight As Double = CDbl(txtWeight.Text)
        ' 顯示欄位值
        txtOutput.Text = "姓名: " & txtName.Text & vbNewLine
        txtOutput.Text &= "密碼: " & txtPass.Text & vbNewLine
        txtOutput.Text &= "BMI: " & (weight / (height * height))
    End Sub
End Class
