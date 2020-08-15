Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim objCon As SqlConnection
        Dim objDataAdapter As SqlDataAdapter
        Dim strDbCon, strSQL As String
        ' 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\v11.0;" &
            "AttachDbFilename=" &
            Server.MapPath("App_Data\School.mdf") &
            ";Integrated Security=True"
        ' 建立Connection物件
        objCon = New SqlConnection(strDbCon)
        objCon.Open()  ' 開啟資料庫連接
        ' 建立DataAdapter物件的SQL指令
        strSQL = "SELECT * FROM Students"
        objDataAdapter = New SqlDataAdapter(strSQL, objCon)
        ' 填入DataSet物件
        Dim objDataSet As DataSet = New DataSet()
        objDataAdapter.Fill(objDataSet, "Students")
        lblOutput.Text = "資料表記錄: <hr/>"
        Dim objRow As DataRow
        For Each objRow In objDataSet.Tables("Students").Rows
            lblOutput.Text &= objRow("sid") & " - "
            lblOutput.Text &= objRow("name") & " - "
            lblOutput.Text &= objRow("tel") & " - "
            lblOutput.Text &= objRow("birthday") & "<br/>"
        Next
        objCon.Close()  ' 關閉資料庫連接
    End Sub
End Class
