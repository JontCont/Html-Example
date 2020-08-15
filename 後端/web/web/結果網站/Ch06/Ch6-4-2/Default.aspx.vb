
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        lblOutput.Text = Request.ServerVariables(txtServer.Text)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Const BR = "<br/>" ' 換行標籤常數
        Dim hbc As HttpBrowserCapabilities = Request.Browser
        lblOutput.Text = "瀏覽器種類: " & hbc.Type & BR
        lblOutput.Text &= "瀏覽器名稱: " & hbc.Browser & BR
        lblOutput.Text &= "版本: " & hbc.Version & BR
        lblOutput.Text &= "主版本: " & hbc.MajorVersion & BR
        lblOutput.Text &= "次版本: " & hbc.MinorVersion & BR
        lblOutput.Text &= "平台: " & hbc.Platform & BR
        lblOutput.Text &= "支援框架: " & hbc.Frames & BR
        lblOutput.Text &= "支援表格: " & hbc.Tables & BR
        lblOutput.Text &= "支援Cookies: " & hbc.Cookies & BR
        lblOutput.Text &= "支援VBScript: " & hbc.VBScript & BR
        lblOutput.Text &= "支援JavaScript: " &
                               hbc.JavaScript & BR
        lblOutput.Text &= "支援Java Applets: " &
                              hbc.JavaApplets & BR
        lblOutput.Text &= "支援ActiveX控制: " &
                             hbc.ActiveXControls & BR
    End Sub
End Class
