<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "epaper";

	//取得使用者選取ID文案
	no = StringTool.validString(request.getParameter("no"));
	np_no = app_sm.select(tblnp, no);

	//若查無資料,跳回列表頁
	if (np_no.getString("np_id").isEmpty()) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../news/media.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../news/media.jsp'; </script>");
		}
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=np_no.getString("np_robots")%>" />
<meta name="revisit-after" content="<%=np_no.getString("np_revisit_after")%> days" />
<meta name="keywords" content="<%=np_no.getString("np_keywords")%>" />
<meta name="copyright" content="<%=np_no.getString("np_copyright")%>" />
<meta name="description" content="<%=np_no.getString("np_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=np_no.getString("np_seo_track")%><%-- 追蹤碼 --%>


</head>

<body>

<!--網編區-->
<%=np_no.getString("np_content") %>
	            
	           

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>