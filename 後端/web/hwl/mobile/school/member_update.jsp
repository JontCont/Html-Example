<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page import="java.net.*"%>
<%
	//add加入會員,modify修改會員資料
	String action = StringTool.validString(request.getParameter("action"));
	if ("email".equals(action)) {
		String ep_email = StringTool.validString(request.getParameter("ep_email"));
		Vector eps = app_sm.selectAll("epaper_profile", "ep_email=?", new Object[] { ep_email });
		out.clear();
		if (eps.size() == 0) {
			TableRecord ep = new TableRecord("epaper_profile");
			ep.setValue("ep_email", ep_email);
			ep.setInsert("WebUser");
			app_sm.insert(ep);
			out.write("ok");
		}else{
			app_sm.delete("epaper_profile", "ep_email=?", new Object[] { ep_email });
			out.write("cancel");			
		}
	}
	
	//加入會員
	if ("add".equals(action)) {

		//驗證碼檢核
		String r = StringTool.validString((String) session.getAttribute("rand"));
		String ind = StringTool.validString(request.getParameter("ind"));
		if (!r.equals(ind)) {
			out.println("<script> alert('"+AppConfig.getProperty("updateDesc1."+lang)+"'); history.back(); </script>");
			return;
		}

		String mp_account = StringTool.validString(request.getParameter("mp_account"));
		if (mp_account.equals("")) {
			return;
		}
		String chk_id = app_sm.select(tblmp, "mp_account=?", new Object[] { mp_account }).getString("mp_id");
		if (!"".equals(chk_id)) {
			out.println("<script> alert('"+AppConfig.getProperty("memberDesc1."+lang)+"'); location.href='login.jsp'; </script>");
			return;
		}

		TableRecord mp = new TableRecord(tblmp);
		for (int j = 0; j < mp.fieldNames().length; j++) {
			String name = mp.fieldNames()[j];
			if (!StringTool.validString(request.getParameter(name)).equals("")) {
				mp.setValue(name, StringTool.validString(request.getParameter(name)));
			}
		}
		mp.setValue("mp_type", "N");
		mp.setValue("mp_status", "Y");
		mp.setInsert("Web_User");
		app_sm.insert(mp);

		session.setAttribute("member", mp);
		out.println("<script> location='member_sendmail.jsp?mp_id=" + mp.getString("mp_id") + "&type=add'; </script>");
	}

	//修改會員資料
	if ("modify".equals(action)) {

		TableRecord mp = (TableRecord) session.getAttribute("member");
		for (int j = 0; j < mp.fieldNames().length; j++) {
			String name = mp.fieldNames()[j];
			if (!StringTool.validString(request.getParameter(name)).equals("")) {
				mp.setValue(name, StringTool.validString(request.getParameter(name)));
			}
		}
		mp.setUpdate("Web_User");
		app_sm.update(mp);

		session.setAttribute("member", mp);
		out.println("<script> alert('"+AppConfig.getProperty("memberDesc2."+lang)+"'); location='../school/issue.jsp';  </script>");
	}

	//會員登入
	if ("login".equals(action)) {

		String qaccount = StringTool.validString(request.getParameter("qaccount"));
		String qpwd = StringTool.validString(request.getParameter("qpwd"));

		TableRecord mp = app_sm.select(tblmp, "mp_account=? AND mp_password=?", new String[] { qaccount, qpwd });
		out.clear();
		if ("".equals(mp.getString("mp_id"))) {
			out.write("account");
			return;
		} else {
			//登入成功
			session.setAttribute("member", mp);
			out.write(mp.getString("mp_name"));
			return;
		}
	}

	//會員登出
	if ("logout".equals(action)) {
		session.removeAttribute("member");
		session.removeAttribute("shopcart");
		out.write("<script>alert('"+AppConfig.getProperty("memberDesc3."+lang)+"');location.href='../index/index.jsp';</script>");
		return;
	}

	//忘記密碼
	if ("forget".equals(action)) {
		out.clear();
		String qaccount = StringTool.validString(request.getParameter("mp_account"));

		TableRecord mp = app_sm.select(tblmp, "mp_account=?", new String[] { qaccount });
		if ("".equals(mp.getString("mp_id"))) {
			out.write("account");
			return;
		}

		String servername = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		if (request.getServerPort() == 80) {
			servername = request.getScheme() + "://" + request.getServerName();
		}
		String localname = request.getScheme() + "://" + request.getLocalName() + ":" + request.getLocalPort();
		String link_url = servername + request.getContextPath();

		URL url;
		HttpURLConnection connection = null;
		StringBuilder sb = new StringBuilder();
		DataOutputStream printout;
		DataInputStream input;

		String data = "mp_id=" + mp.getString("mp_id") + "&type=forget";
		try {

			request.setCharacterEncoding("UTF-8");

			//POST
			url = new URL(link_url + "/web/member/member_sendmail.jsp");

			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			connection.setRequestProperty("Content-Length", String.valueOf(data.getBytes().length));
			connection.setUseCaches(false);
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.connect();

			DataOutputStream dos = new DataOutputStream(connection.getOutputStream());
			dos.writeBytes(data);
			dos.close();
			int HttpResult = connection.getResponseCode();
			if (HttpResult == HttpURLConnection.HTTP_OK) {
				out.write("success");
				return;
			} else {
				out.write("error");
				return;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	//關閉連線池
	app_sm.close();
%>