<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/config.jspf"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="javax.activation.*"%>
<%
	String page_code = "member"; // 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	String mp_id = StringTool.validString(request.getParameter("mp_id"));
	String type = StringTool.validString(request.getParameter("type"));
	TableRecord mp = app_sm.select(tblmp, mp_id);

	// 利用 JavaMail 元件寄送信件
	final String uid = SiteSetup.getValue("smtp.auth.account"); // 設定 Smtp 認證帳號
	final String upw = SiteSetup.getValue("smtp.auth.password"); // 設定 Smtp 密碼
	String mailhost = SiteSetup.getValue("smtp.host.name"); // 設定 Smtp Server 名稱
	String smtpport = SiteSetup.getValue("smtp.auth.port"); // 設定 Smtp Server 的 Port 值
	String smtpauth = SiteSetup.getValue("smtp.auth.status"); // 設定 Smtp Server 是否需要認證 , 或是使用 GMail 465 Port
	String us_email = SiteSetup.getValue("service.email.address"); // 設定寄件人 e-Mail
	String us_name = SiteSetup.getValue("service.email.name"); // 設定寄件人 名稱
	String servmailto = SiteSetup.getValue("original." + page_code + "." + lang); // 設定正本收件人 e-Mail
	String servmailcc = mp.getString("mp_account"); // 設定副本收件人 e-Mail
	String subject = SiteSetup.getText("cp.company." + lang);

	//Server name.	
	String servername = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	if (request.getServerPort() == 80) {
		servername = request.getScheme() + "://" + request.getServerName();
	}
	String localname = request.getScheme() + "://" + request.getLocalName() + ":" + request.getLocalPort();
	String url = servername + request.getContextPath();
	//設定信件內容
	StringBuffer sb = new StringBuffer();
	Vector urlcontent = null;
	if (type.equals("add")) {
		if (lang.equals("tw")) {
			subject += " 加入會員通知信";
		}
		if (lang.equals("cn")) {
			subject += " 加入会员通知信";
		}
		if (lang.equals("en")) {
			subject += " Register notification letter";
		}
		if (lang.equals("jp")) {
			subject += " 通知書を登録します";
		}
		urlcontent = HttpURL.returnContent(url + "/web/mail/add_member.jsp?mp_id=" + mp_id + "&lang=" + lang); // 信件內容產生的 JSP 檔
	} else {
		if (lang.equals("tw")) {
			subject += " 忘記密碼通知信";
		}
		if (lang.equals("cn")) {
			subject += " 忘记密码通知信";
		}
		if (lang.equals("en")) {
			subject += " Forgot your password notification letter";
		}
		if (lang.equals("jp")) {
			subject += " パスワードの通知書を忘れました";
		}
		urlcontent = HttpURL.returnContent(url + "/web/mail/forget_password.jsp?mp_id=" + mp_id + "&lang=" + lang); // 信件內容產生的 JSP 檔
	}
	for (int i = 0; i < urlcontent.size(); i++) {
		String line = (String) urlcontent.get(i);
		sb.append(line);
	}
	String content = sb.toString();

	request.setCharacterEncoding("UTF-8"); // 設定信件使用字集
	boolean sessionDebug = false; // 設定是否啟用除錯模式 true 為開啟 , false 為關閉
	String userName = uid; //your id
	String password = upw; //your password		

	try {
		java.util.Properties props = System.getProperties();
		props.put("mail.smtp.host", mailhost);
		props.put("mail.smtp.port", smtpport);

		if (!"G".equals(smtpauth)) {
			// 使用一般 SMTP Sever 寄信
			props.put("mail.smtp.auth", "N".equals(smtpauth) ? false : true);
			props.setProperty("mail.smtp.socketFactory.class", "");
			props.setProperty("mail.smtp.socketFactory.fallback", "false");
			props.setProperty("mail.smtp.socketFactory.port", smtpport);
			props.put("mail.smtp.ssl.enable", false);
			props.put("mail.smtp.starttls.enable", false);
			props.put("mail.smtp.auth.plain.disable", false);
		} else {
			// 使用 Gmail SMTP	Server 465 port 寄信
			// 注意需先至 https://www.google.com/settings/security/lesssecureapps 將帳號開啟允許低安全登錄
			props.put("mail.smtp.auth", true);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.setProperty("mail.smtp.socketFactory.fallback", "false");
			props.setProperty("mail.smtp.socketFactory.port", smtpport);
			props.put("mail.smtp.ssl.enable", true);
			props.put("mail.smtp.starttls.enable", true);
			props.put("mail.smtp.auth.plain.disable", true);
		}

		Authenticator auth = new javax.mail.Authenticator() {
			String userName = uid;//your id
			String password = upw;//your password

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		};
		//javax.mail.Session mailSession = javax.mail.Session.getDefaultInstance(props,auth);//在linux下用下列getInstance
		javax.mail.Session mailSession = javax.mail.Session.getInstance(props, auth);
		mailSession.setDebug(sessionDebug);
		MimeMessage msg = new MimeMessage(mailSession); // 需使用 MimeMessage 型態 , 信件主題才不會有亂碼
		msg.setFrom(new InternetAddress(us_email, us_name)); // set mail from
		// set to email
		//指定收件人,多人請用逗點分開 
		InternetAddress[] address = InternetAddress.parse(servmailto);
		msg.setRecipients(Message.RecipientType.TO, address);
		//副本	
		InternetAddress[] ccAddress = InternetAddress.parse(servmailcc);
		msg.setRecipients(Message.RecipientType.CC, ccAddress);
		msg.setSubject(subject, "UTF-8");
		// set send date
		msg.setSentDate(new Date());
		// set content
		msg.setContent(content, "text/html; charset=UTF-8");
		// Get Transport use userName and password
		Transport trans = mailSession.getTransport("smtp");
		trans.connect(mailhost, userName, password);
		trans.send(msg);
		trans.close();

		if (type.equals("add")) {
			if (lang.equals("tw")) {
				out.println("<script> alert('會員加入成功！');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("cn")) {
				out.println("<script> alert('会员加入成功！');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("en")) {
				out.println("<script> alert('Members to success!');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("jp")) {
				out.println("<script> alert('成功へのメンバー！');location='../index/index.jsp'; </script>");
			}
		} else {
			if (lang.equals("tw")) {
				out.println("<script> alert('信件已成功寄出！');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("cn")) {
				out.println("<script> alert('信件已成功寄出！');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("en")) {
				out.println("<script> alert('Letter has been sent successfully!');location='../index/index.jsp'; </script>");
			}
			if (lang.equals("jp")) {
				out.println("<script> alert('手紙は正常に送信されました！');location='../index/index.jsp'; </script>");
			}
		}
	} catch (Exception ex) {
		if (lang.equals("tw")) {
			out.println("<script> alert('已完成您訊息的登錄，但系統發生通知信件發送失敗 !!');location='../index/index.jsp'; </script>");
		}
		if (lang.equals("cn")) {
			out.println("<script> alert('已完成您讯息的登录,但系统发生通知信件发送失败!!');location='../index/index.jsp'; </script>");
		}
		if (lang.equals("en")) {
			out.println("<script> alert('Your login information has been completed, but the system failure occurred sending notification letters!!');location='../index/index.jsp'; </script>");
		}
		if (lang.equals("jp")) {
			out.println("<script> alert('あなたのメッセージはログインが完了すると、ファイルシステムの障害発生通知書が送られました!!');location='../index/index.jsp'; </script>");
		}
	}
%>