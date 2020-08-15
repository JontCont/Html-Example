Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim path As String = Server.MapPath("~\Test")
        Dim index As Integer = 0
        Dim dirInfo As DirectoryInfo = New DirectoryInfo(path)
        Try ' 取得資料夾清單
            Dim subDirs() As DirectoryInfo = dirInfo.GetDirectories()
            For index = 0 To UBound(subDirs)
                lblOutput.Text &= subDirs(index).Name & "<br/>"
            Next
        Catch ex As Exception
            lblOutput.Text &= ex.Message & "<br/>"
        End Try
        lblOutput.Text &= "<hr/>"
        Try ' 取得檔案清單
            Dim subFiles() As FileInfo = dirInfo.GetFiles()
            Dim subFile As FileInfo
            For Each subFile In subFiles
                lblOutput.Text &= subFile.Name & "<br/>"
            Next
        Catch ex As Exception
            lblOutput.Text &= ex.Message & "<br/>"
        End Try
    End Sub
End Class
