
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 取得實際路徑
        Dim path As String = Server.MapPath("Output.txt")
        ' 建立FileInfo物件
        Dim fileInfo As FileInfo = New FileInfo(path)
        ' 建立文字檔案
        Dim sw As StreamWriter = fileInfo.CreateText()
        ' 寫入文字內容
        sw.Write(txtInput.Text & vbNewLine)
        lblOutput.Text = "已經寫入：" & txtInput.Text
        sw.Flush()  ' 將緩衝區資料寫入檔案
        sw.Close()  ' 關閉檔案
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ' 取得實際路徑
        Dim path As String = Server.MapPath("Output.txt")
        ' 開啟文字檔案
        Dim sw As StreamWriter = New StreamWriter(path)
        ' 寫入文字內容
        sw.WriteLine(txtInput.Text)
        lblOutput.Text = "已經覆寫：" & txtInput.Text
        sw.Flush()  ' 將緩衝區資料寫入檔案
        sw.Close()  ' 關閉檔案
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        ' 取得實際路徑
        Dim path As String = Server.MapPath("Output.txt")
        ' 建立FileInfo物件
        Dim fileInfo As FileInfo = New FileInfo(path)
        ' 開啟新增的文字檔案
        Dim sw As StreamWriter = fileInfo.AppendText()
        ' 寫入文字內容
        sw.WriteLine(txtInput.Text)
        lblOutput.Text = "已經新增：" & txtInput.Text
        sw.Flush()  ' 將緩衝區資料寫入檔案
        sw.Close()  ' 關閉檔案
    End Sub
End Class
