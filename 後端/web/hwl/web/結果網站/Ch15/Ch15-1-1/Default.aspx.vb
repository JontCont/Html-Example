
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' 取得選取模式
        Calendar1.SelectionMode = ddlMode.SelectedIndex
        If Calendar1.SelectionMode =
                   CalendarSelectionMode.None Then
            Calendar1.SelectedDates.Clear() ' 清除選取
        End If ' 設定目前的月份
        Calendar1.VisibleDate = New DateTime(
        Calendar1.TodaysDate.Year, ddlMonth.SelectedIndex + 1, 1)
        lblOutput.Text = "VisibleDate屬性值: " &
                  Calendar1.VisibleDate.ToShortDateString()
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        ' 顯示選取日期的範圍
        Select Case (Calendar1.SelectedDates.Count)
            Case 0 ' None
                lblOutput.Text = "沒有選擇日期資料....."
            Case 1 ' Day
                lblOutput.Text = "選擇的日期: " &
                Calendar1.SelectedDate.ToShortDateString()
            Case 7 ' Week
                lblOutput.Text = "選擇星期的開始: " &
                Calendar1.SelectedDate.ToShortDateString()
            Case Else ' Month
                lblOutput.Text = "選擇月的開始: " &
                Calendar1.SelectedDate.ToShortDateString()
        End Select
    End Sub

    Protected Sub Calendar1_VisibleMonthChanged(sender As Object, e As MonthChangedEventArgs) Handles Calendar1.VisibleMonthChanged
        lblOutput.Text = "新月份: " & e.NewDate.Month.ToString() &
                      "<br/>原始前一月份: " &
                      e.PreviousDate.Month.ToString()
    End Sub
End Class
