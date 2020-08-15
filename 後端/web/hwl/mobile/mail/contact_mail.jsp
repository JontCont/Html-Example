<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/config.jspf"%>
<% 
// 語系變數為 lang
String page_code = "contact";					// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用

String mp_id	 = StringTool.validString(request.getParameter("mp_id"));
TableRecord mp	 = app_sm.select(tblmp, mp_id);

//Server name.	
String servername = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
if( request.getServerPort()== 80){
	servername = request.getScheme()+"://"+request.getServerName();
} 
	String localname = request.getScheme()+"://"+request.getLocalName()+":"+request.getLocalPort();
	String url = servername + request.getContextPath() + "/web/mail";

//網頁顯示主體內容
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<%if(lang.equals("tw")){ %>
        <title>連絡我們通知信</title>
		<%} %>
		<%if(lang.equals("cn")){ %>
		<title>连络我们通知信</title>
		<%} %>
		<%if(lang.equals("en")){ %>
		<title>Contact Us Notification Letter</title>
		<%} %>
		<%if(lang.equals("jp")){ %>
		<title>お問い合わせ通知書</title>
		<%} %>
</head>

<body>
	<table width="730" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td>
        	<img src="<%=url %>/images/top.png" width="730" style="display:block; border:none;" />
        </td>
      </tr>
      <tr style="background:url(<%=url %>/images/main.png) top left repeat-y;">
        <td align="center">
        	<table width="571" border="0" cellpadding="0" cellspacing="0" style="font-size:12px;  line-height:20px; margin-top:10px; margin-bottom:10px;">
              <tr>
                <td colspan="2" align="center" style="padding-left:6px; padding-right:6px; padding-bottom:10px;">
                	<img src="<%=url %>/../images/logo.png" width="168" />
                </td>
              </tr>
              <tr>
                <td colspan="2" align="center" style="font-size:15px; color: #000; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:10px; padding-top:10px; border-bottom: solid 1px #ccc;">
                	<%if(lang.equals("tw")){ %>
			        <strong>- 連絡我們通知信 -</strong>
					<%} %>
					<%if(lang.equals("cn")){ %>
					<strong>- 连络我们通知信 -</strong>
					<%} %>
					<%if(lang.equals("en")){ %>
					<strong>- Contact Us Notification Letter -</strong>
					<%} %>
					<%if(lang.equals("jp")){ %>
					<strong>- お問い合わせ通知書 -</strong>
					<%} %>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="center" style="font-size:13px; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:20px; padding-top:20px;">
<%if(lang.equals("tw")){ %>
	<center>您好，我們已收到您的訊息，以下為您填寫的資料，我們將會有專員儘速和您聯絡</center>
              <tr>
                <td width="22%" align="right" valign="top">您的姓名：</td>
                <td width="78%" align="left" valign="top"><%=mp.getString("mp_name") %></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">連絡電話：</td>
                <td align="left" valign="top"></td>
              </tr>
              
              <tr>
                <td align="right" valign="top">電子信箱：</td>
                <td align="left" valign="top"></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">連絡地址：</td>
                <td align="left" valign="top"></td>
              </tr>
              
              <tr>
                <td align="right" valign="top">標題名稱：</td>
                <td align="left" valign="top"></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">內容說明：</td>
                <td align="left" valign="top"></td>
              </tr>
<%} %>
<%if(lang.equals("cn")){ %>
	<center>您好，我们已收到您的讯息，以下为您填写的资料，我们将会有专员尽速和您联络</center>
              <tr>
                <td width="22%" align="right" valign="top">您的姓名：</td>
                <td width="78%" align="left" valign="top"><%=mp.getString("mp_name") %></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">连络电话：</td>
                <td align="left" valign="top"></td>
              </tr>
              
              <tr>
                <td align="right" valign="top">电子信箱：</td>
                <td align="left" valign="top"></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">连络地址：</td>
                <td align="left" valign="top"></td>
              </tr>
              
              <tr>
                <td align="right" valign="top">标题名称：</td>
                <td align="left" valign="top"></td>
              </tr>
              <tr style="background:#F2EFE9;">
                <td align="right" valign="top">内容说明：</td>
                <td align="left" valign="top"></td>
              </tr>
<%} %>
<%if(lang.equals("en")){ %>
<center> Hello, we have received your message. The following is the information you filled in. We will have a specialist contact you as soon as possible </ center>
              <tr>
                <td width = "22%" align = "right" valign = "top"> Your name: </ td>
                <td width = "78%" align = "left" valign = "top"><%=mp.getString("mp_name") %></td>
              </ tr>
              <tr style = "background: # F2EFE9;">
                <td align = "right" valign = "top"> Contact: </ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              
              <tr>
                <td align = "right" valign = "top"> E-mail: </ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              <tr style = "background: # F2EFE9;">
                <td align = "right" valign = "top"> Contact address: </ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              
              <tr>
                <td align = "right" valign = "top"> Title name: </ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              <tr style = "background: # F2EFE9;">
                <td align = "right" valign = "top"> Content description: </ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
<%} %>
<%if(lang.equals("jp")){ %>
<center>こんにちは、メッセージを受信しました。入力した情報は次のとおりです。できるだけ早く専門家からご連絡いたします</ center>
              <tr>
                <td width = "22%" align = "right" valign = "top">名前：</ td>
                <td width = "78%" align = "left" valign = "top"><%=mp.getString("mp_name") %></td>
              </ tr>
              <tr style = "background：＃F2EFE9;">
                <td align = "right" valign = "top">連絡先：</ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              
              <tr>
                <td align = "right" valign = "top">電子メール：</ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              <tr style = "background：＃F2EFE9;">
                <td align = "right" valign = "top">連絡先アドレス：</ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              
              <tr>
                <td align = "right" valign = "top">タイトル名：</ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
              <tr style = "background：＃F2EFE9;">
                <td align = "right" valign = "top">コンテンツの説明：</ td>
                <td align = "left" valign = "top"> </ td>
              </ tr>
<%} %>
                </td>
              </tr>              
            </table>
            
            <br/>
            <table width="571" border="0" cellspacing="0" cellpadding="0" style="font-size:13px; color:#666;">
              <tr >
                <td align="center" style="border-top: dashed 1px #999; line-height:30px;">- 
                			<%if(lang.equals("tw")){ %>
							此封信為系統自動寄發，請勿直接回信
							<%} %>
							<%if(lang.equals("cn")){ %>
							此封信为系统自动寄发，请勿直接回信
							<%} %>
							<%if(lang.equals("en")){ %>
							This letter is sent automatically, do not directly reply
							<%} %>
							<%if(lang.equals("jp")){ %>
							この文字が自動的に送信され、直接返信しません
							<%} %> -</td>
              </tr>
            </table>
            
        </td>
      </tr>
      <tr>
        <td>
        	<img src="<%=url %>/images/footer.png" width="730" style="display:block; border:none;" />
        </td>
      </tr>
    </table>

</body>
</html>
<%
//關閉連線池
app_sm.close();
%>