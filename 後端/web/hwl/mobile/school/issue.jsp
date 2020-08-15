<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "issue";

	//列表分頁筆數設定
	int page_items = 16;

	//取得使用者輸入搜尋值
	String qstr = StringTool.validString(request.getParameter("qstr"));

	String[] names = new String[] { "npage", "qstr" };
	String[] values = new String[] { String.valueOf(pageno), qstr };

	Vector<TableRecord> ips = app_sm.selectAll(tblip, "ip_lang=? and ip_title like? and ip_display=?", new Object[] { lang, "%" + qstr + "%", "Y" }, "ip_createdate DESC");

	app_dp = new DataPager(ips, page_items); // 設定資料分頁每頁筆數
	ips = app_dp.getPageContent(pageno);

	TableRecord member = (TableRecord) session.getAttribute("member");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%@include file="/WEB-INF/jspf/mis/pagerscript.jspf"%>
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
	<%@include file="../include/top_menu02.jsp"%>

	<%--main--%>
	<div class="main">
		<div class="wrap">

			<%--麵包屑--%>
			<%@include file="include/crumb02.jsp"%>

			<%--內頁大標--%>
			<%@include file="include/title.jsp"%>

			<%--左--%>
			<div class="left">

				<%--左選單--%>
				<%@include file="include/left_menu.jsp"%>

			</div>

			<%--右--%>
			<div class="right">
					<div class="mB_but">
						<input type="button" value="新增主題">
					</div>
				<%
					if (member != null) {
				%>
				<div class="member_name">
					<%
						if (lang.equals("tw")) {
					%>
					<%=member.getString("mp_nickname")%>
					您好！
					<%
						} else {
					%>
					Hello
					<%=member.getString("mp_nickname")%>
					！
					<%
						}
					%>
				</div>
				<%
					}
				%>
				<div class="menuBar">
					<%
						if (member != null && member.getString("mp_status").equals("Y")) {
					%>
					<div class="mB_but">
						<input type="button" value="<%=AppConfig.getProperty("addTopic." + lang)%>" onclick="javascript:location.href='../school/issue_add.jsp';" />
					</div>
					<%
						}
					%>
					<div class="mB_link">
						<%
							if (member == null) {
						%>
						<a href="../school/add.jsp"><%=AppConfig.getProperty("signUp." + lang)%></a>
						<a href="../school/login.jsp"><%=AppConfig.getProperty("logIn." + lang)%></a>
						<%
							} else {
						%>
						<a href="../school/modify.jsp"><%=AppConfig.getProperty("modify." + lang)%></a>
						<a href="../school/member_update.jsp?action=logout"><%=AppConfig.getProperty("logOut." + lang)%></a>
						<%
							}
						%>
					</div>
					<div class="clearfloat"></div>
				</div>

				<form action="<%=page_code%>.jsp" method="post">
					<div class="searchBar member">
						<div class="sB_bigInput">
							<input type="text" placeholder="<%=AppConfig.getProperty("searchPlaceholder2." + lang)%>" name="qstr" value="<%=qstr%>" />
						</div>

						<div class="sB_but">
							<input type="submit" value="<%=AppConfig.getProperty("search." + lang)%>" title="<%=AppConfig.getProperty("searchTitle." + lang)%>" />
						</div>
						<div class="clearfloat"></div>
					</div>
				</form>

				<div class="title_list_area">

					<table cellpadding="0" cellspacing="0" border="0">

						<tr>
							<td width="50%"><%=AppConfig.getProperty("title." + lang)%></td>
							<td><%=AppConfig.getProperty("issueAuthor." + lang)%></td>
							<td><%=AppConfig.getProperty("issueReply." + lang)%></td>
							<td><%=AppConfig.getProperty("issueView." + lang)%></td>
							<td><%=AppConfig.getProperty("issueLatest." + lang)%></td>
						</tr>
						<%
							for (TableRecord ip : ips) {
								Vector<TableRecord> irs = app_sm.selectAll(tblir, "ir_no=?", new Object[] { ip.getString("ip_id") }, "ir_createdate DESC");
								String last_time = ip.getString("ip_createdate");
								if (irs.size() != 0) {
									last_time = irs.get(0).getString("ir_createdate");
								}
						%>
						<tr>
							<td data-name="<%=AppConfig.getProperty("title." + lang)%>：">
								<a href="../school/issue_in.jsp?no=<%=ip.getString("ip_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=ip.getString("ip_title")%>">
									<%=ip.getString("ip_title")%>
								</a>
							</td>
							<td data-name="<%=AppConfig.getProperty("issueAuthor." + lang)%>："><%=ip.getString("ip_createuser")%></td>
							<td data-name="<%=AppConfig.getProperty("issueReply." + lang)%>：">
								<%=irs.size()%>
							</td>
							<td data-name="<%=AppConfig.getProperty("issueView." + lang)%>：">
								<%=ip.getInt("ip_view")%>
							</td>
							<td data-name="<%=AppConfig.getProperty("issueLatest." + lang)%>：">
								<%=last_time.substring(0, 10)%>
							</td>
						</tr>
						<%
							}
						%>

					</table>
				</div>

				<%--頁碼 RWD版 by kevin 20151202--%>
				<div class="page_area_rwd">
					<%@include file="/WEB-INF/jspf/web/mobile_pager.jspf"%>
					<%=HtmlCoder.form("pageform", request.getRequestURI(), names, values)%>
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