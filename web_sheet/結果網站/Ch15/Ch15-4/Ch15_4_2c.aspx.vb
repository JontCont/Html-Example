Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        GridView1.DataSource = school.Courses.ToList()
        GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim school As New SchoolEntities()
        Dim c_no = txtNo.Text
        ' 執行LINQ
        Dim matches = From c In school.Courses
                      Where c.c_no = c_no
                      Select c
        ' 取出單筆記錄 
        Dim course As Courses = matches.Single()
        ' 刪除課程
        school.Courses.Remove(course)
        school.SaveChanges()  ' 更新資料庫
        GridView1.DataSource = school.Courses.ToList()
        GridView1.DataBind()
    End Sub
End Class
