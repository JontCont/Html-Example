<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "teacher";

	//取得使用者選擇ID類別
	no = StringTool.validString(request.getParameter("no"));
	cp_no = app_sm.select(tblcp, no);

	//若查無資料,跳回列表頁
	Vector<TableRecord> cps = app_sm.selectAll(tblcp, "cp_id=? AND cp_lang=?", new Object[] { no, lang }, "cp_showseq ASC , cp_emitdate DESC , cp_createdate DESC");
	if (cps.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../school/teacher.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../school/teacher.jsp'; </script>");
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

				<div class="squareListArea in">
					
					<div class="squareList">
						<div class="sLl_tit teacher_in">
							<span>
								<%=cp_no.getString("cp_title")%>：<%=cp_no.getString("cp_no")%>
							</span>
						</div>
						<div class="sLl_img teacher_in">							
							<img src="<%=app_fetchpath + "/teacher/" + lang + "/" + cp_no.getString("cp_image")%>" alt="<%=cp_no.getString("cp_alt")%>" title="<%=cp_no.getString("cp_alt")%>" />
						</div>
						<div class="sLl_item teacher_in">
							<%=cp_no.getString("cp_desc").replace(String.valueOf((char)13),"<br/>")%>
						</div>						
					</div>

					<div class="clearfloat"></div>
				</div>
				
				<%--網編區--%>
				<section class="textArea"> <%=cp_no.getString("cp_content")%> </section>
				
				<div class="back_but">
	            	<input type="button" onclick="javascript:history.back();" value="<%=AppConfig.getProperty("back."+lang) %>" title="<%=AppConfig.getProperty("backTitle."+lang) %>" />
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