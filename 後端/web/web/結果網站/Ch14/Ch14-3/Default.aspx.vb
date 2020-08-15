Imports System.Net.Mail
Imports System.Net
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 建立MailMessage物件
        Dim myMail As MailMessage = New MailMessage()
        ' 寄件者和收件者郵件地址
        myMail.From = New MailAddress("hueyan@ms2.hinet.net")
        myMail.To.Add(New MailAddress(txtMailTo.Text))
        myMail.Priority = MailPriority.Normal ' 優先等級
        myMail.Subject = txtSubject.Text      ' 主旨 
        If chkFormat.Checked Then       ' HTML格式 
            myMail.IsBodyHtml = True
            myMail.Body = "<p>" & txtBody.Text & "</p>"
        Else                            ' 文字格式
            myMail.Body = txtBody.Text  ' 本文
        End If
        ' 處理郵件的附檔
        Dim uploadFile As String = "~/temp/"
        If fupFile.HasFile Then  ' 是否有上傳檔案
            uploadFile &= fupFile.FileName ' 建立路徑
            ' 取得實際的路徑
            uploadFile = Server.MapPath(uploadFile)
            fupFile.SaveAs(uploadFile) ' 儲存上傳檔案
            ' 在電子郵件加上附檔
            Dim attachedFile As Attachment =
                              New Attachment(uploadFile)
            attachedFile.Name = fupFile.FileName
            myMail.Attachments.Add(attachedFile) ' 新增附檔
        End If
        ' 設定SMTP伺服器
        Dim smtpServer As New SmtpClient()
        smtpServer.Host = "ms2.hinet.net"
        Dim myCache As CredentialCache = New CredentialCache()
        myCache.Add("ms2.hinet.net", 25, "login",
                New NetworkCredential("hueyan", "1234"))
        smtpServer.Credentials = myCache
        smtpServer.Send(myMail)          ' 寄出郵件
        lblOutput.Text = "附檔電子郵件已經寄出.....<br/>"
    End Sub
End Class
