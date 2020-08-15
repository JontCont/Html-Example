
Partial Class _Default
    Inherits System.Web.UI.Page
    ' 從1加到5的程序
    Sub addOneToFive()
        Dim i, sum As Integer
        For i = 1 To 5 Step 1
            sum += i
        Next
        lblOutput.Text &= "1加到5的和: " & sum & "<br/>"
    End Sub
    ' 從1加到N的函數
    Function addOneToN(ByVal maxValue As Integer)
        Dim sum As Integer = 0
        Dim counter As Integer = 1
        While counter <= maxValue
            sum += counter
            counter += 1
        End While
        Return sum
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Call addOneToFive()  ' 呼叫程序
        addOneToFive()
        Dim sum As Integer
        sum = addOneToN(100)  ' 呼叫函數
        lblOutput.Text &= "1加到100: " & sum & "<br/>"
    End Sub
End Class
