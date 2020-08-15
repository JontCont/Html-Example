<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "about_s";

	//取得資料
	Vector<TableRecord> cps = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { page_code, lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");

	//取得使用者選擇ID文案
	no = StringTool.validString(request.getParameter("no"));
	cp_no = app_sm.select(tblcp, no);

	//若無選擇,且總資料數大於0,取第一筆
	if ((!cp_no.getString("cp_display").equals("Y") || cp_no.getString("cp_id").equals("")) && cps.size() > 0) {
		cp_no = cps.get(0);
	} else if (cps.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../index/index.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../index/index.jsp'; </script>");
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
<meta name="Robots" content="<%=cp_no.getString("cp_robots")%>" />
<meta name="revisit-after" content="<%=cp_no.getString("cp_revisit_after")%> days" />
<meta name="keywords" content="<%=cp_no.getString("cp_keywords")%>" />
<meta name="copyright" content="<%=cp_no.getString("cp_copyright")%>" />
<meta name="description" content="<%=cp_no.getString("cp_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=cp_no.getString("cp_seo_track")%><%-- 追蹤碼 --%>

<%-- 單筆文案CSS --%>
<%if(!cp_no.getString("cp_css").equals("")){%>
<style>
	<%=cp_no.getString("cp_css")%>
</style>
<%} %>
<%-- CSS結束 --%>
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
				<div class="NewsListArea title">
                    <div class="NewsList">
                        <div class="NL_tit"><%=cp_no.getString("cp_title")%>
                        </div>
                        <div class="NL_time"><%=cp_no.getString("cp_emitdate")%>
                        </div>
                    </div>
                </div>
				<%--網編區--%>
				<section class="textArea"> <%=cp_no.getString("cp_content")%> </section>

			</div>

			<div class="clearfloat"></div>

		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>