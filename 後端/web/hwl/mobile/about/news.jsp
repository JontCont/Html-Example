<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "news";
	//列表分頁筆數設定
	int page_items = 10;

	//取得使用者輸入搜尋值
	String qstr = StringTool.validString(request.getParameter("qstr"));
	String qyear = StringTool.validString(request.getParameter("qyear"));

	String[] names = new String[] { "npage", "qstr", "qyear" };
	String[] values = new String[] { String.valueOf(pageno), qstr, qyear };

	//資料列表
	String[] temp_qstrs = qstr.split(" ");
	String result_str = "";
	for (String temp_qstr : temp_qstrs) {
		result_str += " AND (np_title like '%" + temp_qstr + "%' OR np_no like'%" + temp_qstr + "%') ";
	}
	Vector<QueryResult> nps = app_sm.queryResult("select * from " + tblnp + " where DATE_FORMAT(np_emitdate,'%Y') like '%" + qyear + "%' AND np_lang='" + lang + "' AND np_code='" + page_code + "'" + result_str + "ORDER BY np_showseq ASC , np_emitdate DESC , np_modifydate DESC , np_createdate DESC");

	app_dp = new DataPager(nps, page_items); // 設定資料分頁每頁筆數
	nps = app_dp.getPageContent(pageno);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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

				<form action="<%=page_code%>.jsp" method="post">
					<div class="searchBar time">
						<div class="sB_time">
							<%=AppConfig.getProperty("dateArea." + lang)%>：
						</div>
						<div class="sB_bigInput">
							<select name="qyear" title="<%=AppConfig.getProperty("select." + lang)%><%=AppConfig.getProperty("dateArea." + lang)%>">
								<option value=""><%=AppConfig.getProperty("allDate." + lang)%></option>
								<%
									//不重複的上架日期年份
									Vector<QueryResult> years = app_sm.queryResult("select distinct DATE_FORMAT(np_emitdate,'%Y') from " + tblnp + " where np_code='" + page_code + "' and np_lang='" + lang + "'");
								%>
								<%
									for (QueryResult year : years) {
								%>
								<option value="<%=year.getValue(0)%>" <%=qyear.equals(year.getValue(0)) ? "selected" : ""%>><%=year.getValue(0)%></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div class="searchBar member">
						<div class="sB_bigInput">
							<input type="text" placeholder="<%=AppConfig.getProperty("searchPlaceholder." + lang)%>" name="qstr" value="<%=qstr%>" />
						</div>

						<div class="sB_but">
							<input type="submit" value="<%=AppConfig.getProperty("search." + lang)%>" title="<%=AppConfig.getProperty("searchTitle." + lang)%>" />
						</div>
						<div class="clearfloat"></div>
					</div>

					<div class="clearfloat"></div>
				</form>
			</div>

			<div class="NewsListArea">
				<%
					for (QueryResult np : nps) {
				%>
				<div class="NewsList">
					<div class="NL_time">
						<%=np.getString("np_emitdate")%>
					</div>
					<div class="NL_tit">
						<a href="../about/news_in.jsp?no=<%=np.getString("np_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>">
							<%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>
						</a>
					</div>
				</div>
				<%
					}
				%>
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