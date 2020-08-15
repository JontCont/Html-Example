
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim x, y, result As Integer
        ' 取得測試值
        x = CInt(txtOp1.Text)
        y = CInt(txtOp2.Text)
        Try
            result = x / y ' 測試的錯誤程式碼
            lblOutput.Text &= "x/y=" & result & "<br/>"
        Catch ex As Exception
            ' 錯誤處理的程式碼
            lblOutput.Text &= "程式錯誤: " & _
                       ex.ToString() & "<br/>"
        Finally
            ' 顯示測試值
            lblOutput.Text &= "測試值 x=" & x & _
                    "<br/>" & "測試值 y=" & y & "<br/>"
        End Try
    End Sub
End Class
