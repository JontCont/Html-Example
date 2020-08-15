
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 陣列變數的宣告和指定初值
        Dim arr(0 To 2) As Integer ' 指定範圍 
        Dim grades = {53, 76, 65}
        Dim i As Integer
        arr(0) = 53  ' 指定陣列值
        arr(1) = 76
        arr(2) = 65
        ' 顯示陣列元素值
        For i = 0 To 2
            lblOutput.Text &= "原始陣列：" & arr(i) & "<br/>"
        Next i
        ' 重新調整陣列尺寸
        ReDim Preserve grades(4)
        grades(3) = 86   ' 指定陣列值
        grades(4) = 92
        ' 顯示陣列元素值
        For i = 0 To 4
            lblOutput.Text &= "調整陣列：" & grades(i) & "<br/>"
        Next i
    End Sub
End Class
