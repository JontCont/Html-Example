
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Const MAX_SIZE = 100 ' 常數宣告
        Dim size   ' 變數size的資料型別是Object
        ' 變數size1和size2都是Integer資料型別
        Dim size1, size2 As Integer
        ' 指定變數的初值
        Dim name As String, size3 As Integer = 100
        Dim title As String = "我的""個人""首頁"
        size = "1000"
        size1 = 5
        size2 = 4
        size = 3
        name = "陳會安"
        lblOutput.Text = "最大尺寸:" & MAX_SIZE & "<br/>" &
         "總和:" & size + size1 + size2 + size3 & "<br/>" &
         "標題文字:" & title & "<br/>" &
         "作者: " & name & "<br/>"
    End Sub
End Class
