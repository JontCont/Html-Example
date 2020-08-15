Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim o As String
        ' 取得實際路徑
        Dim path As String = Server.MapPath(
                    Request.ServerVariables("PATH_INFO"))
        ' 建立FileInfo物件
        Dim fInfo As FileInfo = New FileInfo(path)
        ' 顯示檔案資訊
        o = "檔案名稱: " & fInfo.Name & "<br/>"
        o &= "檔案全名: " & fInfo.FullName & "<br/>"
        o &= "檔案副檔名: " & fInfo.Extension & "<br/>"
        o &= "父資料夾名稱: " & fInfo.Directory.Name & "<br/>"
        o &= "父資料夾全名: " & fInfo.DirectoryName & "<br/>"
        o &= "建立日期: " & fInfo.CreationTime & "<br/>"
        o &= "存取日期: " & fInfo.LastAccessTime & "<br/>"
        o &= "寫入日期: " & fInfo.LastWriteTime & "<br/>"
        o &= "檔案尺寸: " & fInfo.Length & "<br/>"
        lblOutput.Text = o
    End Sub
End Class
