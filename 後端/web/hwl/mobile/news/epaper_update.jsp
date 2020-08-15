<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	String Email = StringTool.validString(request.getParameter("Email"));
	String Type = StringTool.validString(request.getParameter("Type"));
	out.clear();
	
	if(Type.equals("Y")){
		TableRecord ep = app_sm.select(tblep,"ep_email=?",new Object[]{Email});
		if(ep.getString("ep_id").equals("")){
			ep.setInsertValue("WebUser");
			ep.setValue("ep_email", Email);
			app_sm.insert(ep);	
		}
		out.write("add_complete");
	}else{
		app_sm.delete(tblep,"ep_email = ?",new Object[]{Email});
		out.write("delete_complete");
	}
%>