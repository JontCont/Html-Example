
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim objDR As SqlDataReader
        Dim strDbCon, strSQL As String
        ' 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\v11.0;" &
           "AttachDbFilename=" &
            Server.MapPath("App_Data\School.mdf") &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()  ' 開啟資料庫連接
        strSQL = "SELECT * FROM Students"
        ' 建立Command物件的SQL指令
        objCmd = New SqlCommand(strSQL, objCon)
        ' 取得DataReader物件
        objDR = objCmd.ExecuteReader()
        If objDR.HasRows Then
            lblOutput.Text = "資料表記錄: <hr/>"
            ' 顯示資料表的記錄
            Do While objDR.Read()
                lblOutput.Text &= objDR("sid") & " - "
                lblOutput.Text &= objDR("name") & " - "
                lblOutput.Text &= objDR("tel") & "<br/>"
            Loop
        Else
            lblOutput.Text = "資料表中沒有記錄資料!"
        End If
        objDR.Close()   ' 關閉DataReader
        objCon.Close()  ' 關閉資料庫連接
    End Sub
End Class
