Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ch, i, count As Integer
        ' 取得實際路徑
        Dim path As String = Server.MapPath("Output.txt")
        count = CInt(txtCount.Text)
        '  開啟文字檔案
        Dim sr As StreamReader = New StreamReader(path)
        For i = 1 To count
            ch = sr.Read()
            txtOutput.Text &= ChrW(ch) & " "
        Next i
        txtOutput.Text &= vbNewLine
        sr.Close()  ' 關閉檔案
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim i, count As Integer
        Dim path, str As String
        ' 取得實際路徑
        path = Server.MapPath("Output.txt")
        count = CInt(txtCount.Text)
        '  開啟文字檔案
        Dim sr As StreamReader = New StreamReader(path)
        For i = 1 To count
            str = sr.ReadLine() ' 讀取一行
            txtOutput.Text &= str & vbNewLine
        Next i
        sr.Close()  ' 關閉檔案
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim str As String
        ' 開啟文字檔案
        Dim sr As StreamReader = New StreamReader(
                         Server.MapPath("Output.txt"))
        str = sr.ReadToEnd() ' 讀取整個文字檔案
        txtOutput.Text &= "檔案內容: " & _
                           vbNewLine & str & vbNewLine
        sr.Close()  ' 關閉檔案
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim textLine As String
        Dim count As Integer
        ' 開啟文字檔案
        Dim sr As StreamReader = New StreamReader(
                         Server.MapPath("Output.txt"))
        count = 0    ' 列號
        Do ' 讀取整個文字檔案
            textLine = sr.ReadLine() ' 讀取整行文字內容
            count = count + 1
            txtOutput.Text &= count & ": " & _
                         textLine & vbNewLine
        Loop Until sr.Peek() = -1
        sr.Close()  ' 關閉檔案
    End Sub
End Class
