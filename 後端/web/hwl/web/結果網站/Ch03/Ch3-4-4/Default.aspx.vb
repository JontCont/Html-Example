
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim counter As Integer = 1
        Dim counter1, sum As Integer
        ' 第一層迴圈
        Do While counter <= 10
            sum = 0
            lblOutput.Text &= "計算 1 加到 " & counter & " 等於 "
            ' 計算總和的第二層迴圈
            counter1 = 0
            Do
                sum += counter1
                counter1 += 1
            Loop Until counter1 > counter
            lblOutput.Text &= sum & "<br/>"
            counter += 1
        Loop
    End Sub
End Class
