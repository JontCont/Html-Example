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
        <title>加入會員通知信</title>
		<%} %>
		<%if(lang.equals("cn")){ %>
		<title>加入会员通知信</title>
		<%} %>
		<%if(lang.equals("en")){ %>
		<title>Register notification letter</title>
		<%} %>
		<%if(lang.equals("jp")){ %>
		<title>通知書を登録します</title>
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
			        <strong>- 加入會員通知信 -</strong>
					<%} %>
					<%if(lang.equals("cn")){ %>
					<strong>- 加入会员通知信 -</strong>
					<%} %>
					<%if(lang.equals("en")){ %>
					<strong>- Register notification letter -</strong>
					<%} %>
					<%if(lang.equals("jp")){ %>
					<strong>- 通知書を登録します -</strong>
					<%} %>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="left" style="font-size:13px; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:20px; padding-top:20px;">
<%if(lang.equals("tw")){ %>
親愛的 <%=mp.getString("mp_name") %> 您好，歡迎您加入「客來嗑」之會員<br/>
您的帳號：<%=mp.getString("mp_account") %> <br/>
您的密碼：<%=mp.getString("mp_password") %> <br/>
請妥善保存此信件，並維護密碼的隱私性 <br/>
以保障您自己的權益！
<%} %>
<%if(lang.equals("cn")){ %>
亲爱的 <%=mp.getString("mp_name") %><br/>
您的帐号：<%=mp.getString("mp_account") %> <br/>
您的密码：<%=mp.getString("mp_password") %> <br/>
请妥善保存此信件，并维护密码的隐私性 <br/>
以保障您自己的权益！
<%} %>
<%if(lang.equals("en")){ %>
Hello <%=mp.getString("mp_name") %><br/>
Your account: <%=mp.getString("mp_account") %> <br/>
Your password: <%=mp.getString("mp_password") %> <br/>
Keep this letter, and maintain password privacy <br/>
To protect your own interests!
<%} %>
<%if(lang.equals("jp")){ %>
親愛なるの <%=mp.getString("mp_name") %><BR/>
アカウント：<%=mp.getString("mp_account") %><BR/>
あなたのパスワード：<%=mp.getString("mp_password") %><BR/>
この手紙を維持し、パスワードのプライバシーを維持します<BR/>
あなた自身の利益を保護するために！
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