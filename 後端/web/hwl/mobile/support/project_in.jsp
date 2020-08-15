<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "project";
	
	//取得使用者選取ID文案
	no = StringTool.validString(request.getParameter("no"));
	dp_no = app_sm.select(tbldp, no);
	
	//若查無資料,跳回列表頁
	Vector<TableRecord> nps = app_sm.selectAll(tbldp, "dp_id=? AND dp_lang=? AND (? BETWEEN DATE_FORMAT(dp_emitdate,'%Y/%m/%d') and DATE_FORMAT(dp_restdate,'%Y/%m/%d'))", new Object[] { no, lang, app_today }, "dp_showseq ASC , dp_emitdate DESC , dp_createdate DESC");
	if (nps.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../support/project.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../support/project.jsp'; </script>");
		}
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=dp_no.getString("dp_robots")%>" />
<meta name="revisit-after" content="<%=dp_no.getString("dp_revisit_after")%> days" />
<meta name="keywords" content="<%=dp_no.getString("dp_keywords")%>" />
<meta name="copyright" content="<%=dp_no.getString("dp_copyright")%>" />
<meta name="description" content="<%=dp_no.getString("dp_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=dp_no.getString("dp_seo_track")%><%-- 追蹤碼 --%>

<%-- 單筆文案CSS --%>
<%if(!dp_no.getString("dp_css").equals("")){%>
<style>
	<%=dp_no.getString("dp_css")%>
</style>
<%} %>
</head>

<body>

	<%--版頭--%>
	<%@include file="../include/top_menu.jsp"%>

	<%--main--%>
	<div class="main">
		<div class="wrap">

			<%--麵包屑--%>
			<%@include file="include/crumb.jsp"%>

			<%--內頁大標--%>
			<%@include file="include/title.jsp"%>

			<%--左--%>
			<div class="left">

				<%--左選單--%>
				<%@include file="include/left_menu.jsp"%>				

			</div>

			<%--右--%>
			<div class="right">
					
				<%--網編區--%>
				<section class="textArea"> <%=dp_no.getString("dp_content")%> </section>
				
				<div class="maa_btn">
					<input type="button" onclick="javascript:history.back();" value="<%=AppConfig.getProperty("back."+lang) %>" title="<%=AppConfig.getProperty("backTitle."+lang) %>" />
					<input type="button" onclick="location.href='donate.jsp?no=<%=dp_no.getString("dp_id") %>'" value="<%=AppConfig.getProperty("goDonate."+lang) %>" title="<%=AppConfig.getProperty("goDonateTitle."+lang) %>" />
				</div>
				
			</div>

			<div class="clearfloat"></div>			
			
		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>