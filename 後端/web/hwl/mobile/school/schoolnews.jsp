<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
//頁面識別碼
	String page_code = "schoolnews"; 
	//列表分頁筆數設定
	int page_items = 10;

	//取得使用者輸入搜尋值
	String qstr = StringTool.validString(request.getParameter("qstr"));
	String qyear = StringTool.validString(request.getParameter("qyear"));

	// 本來為篩選np_code=schoolnews 現改為與一般news共用 但預設一定要搜尋愛盲學院的新聞
	if(qstr.isEmpty()){
		qstr="愛盲學院";
	}
	String[] names = new String[] { "npage", "qstr", "qyear" };
	String[] values = new String[] { String.valueOf(pageno), qstr, qyear };

	//資料列表
	String[] temp_qstrs = qstr.split(" ");
	String result_str = "";
	for (String temp_qstr : temp_qstrs) {
		result_str += " AND (np_title like '%" + temp_qstr + "%' OR np_no like'%" + temp_qstr + "%') ";
	}
	// 本來為篩選np_code=schoolnews 現改為與一般news共用 但預設一定要搜尋愛盲學院的新聞
	Vector<QueryResult> nps = app_sm.queryResult("select * from " + tblnp + " where DATE_FORMAT(np_emitdate,'%Y') like '%" + qyear + "%' AND np_lang='" + lang + "' AND np_code='" /*+ page_code*/ + "news'" + result_str + "GROUP BY np_showseq ASC , np_emitdate DESC , np_createdate DESC");

	app_dp = new DataPager(nps, page_items); // 設定資料分頁每頁筆數
	nps = app_dp.getPageContent(pageno);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
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
<%//@include file="include/web_title.jsp"%>

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

				<form action="<%=page_code %>.jsp" method="post">
				<%--accesskey 導盲磚定位點 快捷鍵設計 --%>
	            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a> 
					<div class="searchBar">

						<div class="sB_item"><%=show_str.get("date_range."+lang) %>：</div>
						<div class="sB_item sB_select">
							<select name="qyear" title="請選擇日期範圍">
								<option value=""><%=show_str.get("date."+lang) %></option>
								<%
									//不重複的上架日期年份
									Vector<QueryResult> years = app_sm.queryResult("select distinct DATE_FORMAT(np_emitdate,'%Y') from " + tblnp + " where np_code='" + page_code + "'");
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

						<div class="sB_item"><%=show_str.get("query_range."+lang) %>：</div>
						<div class="sB_item sB_text">
							<input type="text"  title="<%=show_str.get("search_placeholder."+lang) %>" placeholder="<%=show_str.get("search_placeholder."+lang) %>" name="qstr" value="<%=qstr%>" />
						</div>

						<div class="sB_item sB_submit">
							<input type="submit" value="<%=field_str.get("inquire."+lang) %>" title="進行查詢" />
						</div>
						<div class="clearfloat"></div>
					</div>
				</form>

				
				<div class="NewsListArea">
					<%
						for (QueryResult np : nps) {
					%>
					<div class="NewsList">
						<div class="NL_tit">
							<a href="../school/schoolnews_in.jsp?no=<%=np.getString("np_id")%>" title="<%=show_str.get("go."+lang) %><%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>">
								<%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>
							</a>
						</div>
						<div class="NL_time">
							<%=np.getString("np_emitdate")%>
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