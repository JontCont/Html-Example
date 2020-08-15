Imports System.Data.EntityClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objCon As EntityConnection
        Dim objCmd As EntityCommand
        Dim objDataReader As EntityDataReader
        Dim strSQL As String
        ' 建立Connection物件
        objCon = New EntityConnection("name=SchoolEntities")
        objCon.Open()  ' 開啟連接
        strSQL = "SELECT [S].[name] FROM "
        strSQL &= "[SchoolEntities].[Students] As S"
        ' 建立Command物件
        objCmd = objCon.CreateCommand()
        objCmd.CommandText = strSQL  ' 指定SQL指令
        ' 執行SQL指令
        objDataReader = objCmd.ExecuteReader(System.Data.CommandBehavior.SequentialAccess)
        txtOutput.Text = ""
        ' 讀取記錄資料
        Do While objDataReader.Read()
            txtOutput.Text &= objDataReader("name") & vbNewLine
        Loop
        objDataReader.Close()  ' 關閉DataReader物件
        objCon.Close()         ' 關閉連接
    End Sub
End Class
