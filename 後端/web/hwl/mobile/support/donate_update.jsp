<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page import="java.net.*"%>
<%
	no = StringTool.validString(request.getParameter("no"));
	
	//驗證碼關關 在config.jspf設定
	if(random_code){
		//驗證碼檢核
		String r = StringTool.validString((String) session.getAttribute("rand"));
		String ind = StringTool.validString(request.getParameter("ind"));
		if (!r.equals(ind)) {
			out.println("<script> alert('" + AppConfig.getProperty("updateDesc1." + lang) + "'); history.back(); </script>");
			return;
		}
	}
	
	TableRecord os = new TableRecord(tblos);
	for (int j = 0; j < os.fieldNames().length; j++) {
		String name = os.fieldNames()[j];
		if (!StringTool.validString(request.getParameter(name)).equals("")) {
			os.setValue(name, StringTool.validString(request.getParameter(name)));
		}
	}
	//若Session為空,跳至會員新增頁
	TableRecord member = (TableRecord) session.getAttribute("member");
	if (member != null) {
		os.setInsert(member.getString("mp_nickname"));
		os.setValue("mp_id", member.getString("mp_id"));
	} else {
		os.setInsert("webUser");
	}
	
	// 至少捐款100元
	int os_total = Integer.parseInt(os.getString("os_total"));
	if(os_total<100){
		out.println("<script> alert('"+title_str.get("amount." + lang)+"') ; history.back(); </script>");
		return;
	}
			
	String os_no = StringTool.validString((String) session.getAttribute("os_no"));
	//String os_no = StringTool.validString(request.getParameter("os_no"));
	Vector checks = app_sm.selectAll(tblos, "os_no=?", new Object[]{os_no});
	if (checks.size() != 0){
		out.println("<script> alert('捐款人編號重複，重新產生捐款人編號') ; history.back(); </script>");
		return;
	}
	os.setValue("os_lang", lang);
	os.setValue("os_status", "N");
	os.setValue("os_code", "order");
	os.setValue("cp_id", no);
	os.setValue("os_no", os_no);
	
	session.removeAttribute("os_no");
	app_sm.insert(os);
	
	String os_paymethod = os.getString("os_paymethod");
	if(os_paymethod.equals("PP1548830298953")){ // Line Pay導向 
		out.println("<script> location='payment/linepay_post.jsp?os_id=" + os.getString("os_id") + "';  </script>");
	}else{ // 網際威信信用卡導向 PP1492428425756
		out.println("<script> location='payment/hitrust_creditPost.jsp?os_id=" + os.getString("os_id") + "';  </script>");
	}
	//關閉連線池
	app_sm.close();
%>