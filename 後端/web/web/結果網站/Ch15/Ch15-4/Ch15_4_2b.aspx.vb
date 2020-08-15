Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        GridView1.DataSource = school.Courses.ToList()
        GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim school As New SchoolEntities()
        ' 建立課程的Courses物件
        Dim course = New Courses()
        course.c_no = txtNo.Text
        course.title = txtTitle.Text
        course.credits = CInt(txtCredit.Text)
        ' 新增物件
        school.Courses.Add(course)
        school.SaveChanges()  ' 更新資料庫
        GridView1.DataSource = school.Courses.ToList()
        GridView1.DataBind()
    End Sub
End Class
