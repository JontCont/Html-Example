<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "teacher";

	//取得資料
	Vector<TableRecord> cps = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=?", new Object[] { page_code, lang }, "cp_showseq ASC, cp_createdate DESC");

	if (cps.size() == 0) {
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
<meta name="Robots" content="<%=SiteSetup.getText("seo.robots." + lang)%>" />
<meta name="revisit-after" content="<%=SiteSetup.getText("seo.revisit_after." + lang)%> days" />
<meta name="keywords" content="<%=SiteSetup.getText("seo.keywords." + lang)%>" />
<meta name="copyright" content="<%=SiteSetup.getText("seo.copyright." + lang)%>" />
<meta name="description" content="<%=SiteSetup.getText("seo.description." + lang)%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=SiteSetup.getText("seo.track." + lang)%><%-- 追蹤碼 --%>
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

				<%--專案列表--%>
				<div class="squareListArea">

					<%
						for (TableRecord cp : cps) {
					%>
					<div class="squareList">
						<div class="sLl_img teacher">
							<a href="../school/teacher_in.jsp?no=<%=cp.getString("cp_id") %>" title="<%=cp.getString("cp_alt")%>">
								<img src="<%=app_fetchpath + "/teacher/" + lang + "/" + cp.getString("cp_image")%>" alt="<%=cp.getString("cp_alt")%>" title="<%=cp.getString("cp_alt")%>" />
							</a>
						</div>
						<div class="sL_right">
							<div class="sLl_tit teacher">
								<a href="../school/teacher_in.jsp?no=<%=cp.getString("cp_id") %>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=cp.getString("cp_title")%>">
									<%=cp.getString("cp_title")%>
								</a>
							</div>
							<div class="sLl_more teacher">
								<%=cp.getString("cp_no")%>
							</div>
						</div>
					</div>
					<%
						}
					%>

					<div class="clearfloat"></div>
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