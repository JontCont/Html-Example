<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page import="java.net.*"%>
<%
	String action = StringTool.validString(request.getParameter("action"));
	String ip_id = StringTool.validString(request.getParameter("ip_id"));
	if ("add".equals(action)) {

		//驗證碼檢核
		String r = StringTool.validString((String) session.getAttribute("rand"));
		String ind = StringTool.validString(request.getParameter("ind"));
		if (!r.equals(ind)) {
			out.println("<script> alert('"+AppConfig.getProperty("updateDesc1."+lang)+"'); history.back(); </script>");
			return;
		}

		TableRecord ip = new TableRecord(tblip);
		for (int j = 0; j < ip.fieldNames().length; j++) {
			String name = ip.fieldNames()[j];
			if (!StringTool.validString(request.getParameter(name)).equals("")) {
				ip.setValue(name, StringTool.validString(request.getParameter(name)));
			}
		}
		
		//若Session為空,跳至會員新增頁
		TableRecord member = (TableRecord) session.getAttribute("member");
		if (member == null) {
			out.println("<script> location='add.jsp'; </script>");
			return;
		}
		
		ip.setInsert(member.getString("mp_nickname"));
		ip.setValue("ip_lang", lang);
		ip.setValue("ip_code", "issue");
		ip.setValue("ip_display", "Y");
		app_sm.insert(ip);

		out.println("<script> alert('"+AppConfig.getProperty("updateDesc2."+lang)+"'); location='../school/issue.jsp';  </script>");
	}

	if ("reply".equals(action)) {
		TableRecord ir = new TableRecord(tblir);
		for (int j = 0; j < ir.fieldNames().length; j++) {
			String name = ir.fieldNames()[j];
			if (!StringTool.validString(request.getParameter(name)).equals("")) {
				ir.setValue(name, StringTool.validString(request.getParameter(name)));
			}
		}
		
		//若Session為空,跳至會員新增頁
		TableRecord member = (TableRecord) session.getAttribute("member");
		if (member == null) {
			out.println("<script> location='add.jsp'; </script>");
			return;
		}
		ir.setInsert(member.getString("mp_nickname"));
		ir.setValue("ir_code", "issue");
		ir.setValue("ir_no", ip_id);
		ir.setValue("ir_lang", lang);
		ir.setValue("ir_display", "Y");
		app_sm.insert(ir);
		
		out.println("<script> alert('"+AppConfig.getProperty("updateDesc3."+lang)+"'); location='../school/issue_in.jsp?no=" + ip_id + "';  </script>");
	}
	//關閉連線池
	app_sm.close();
%>