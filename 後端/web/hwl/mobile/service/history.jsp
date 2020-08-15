<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "history";
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
		result_str += " AND (cp_title like '%" + temp_qstr + "%') ";
	}
	Vector<QueryResult> cps = app_sm.queryResult("select * from " + tblcp + " where DATE_FORMAT(cp_emitdate,'%Y') like '%" + qyear + "%' AND cp_lang='" + lang + "' AND cp_code='" + page_code + "'" + result_str + "ORDER BY cp_showseq ASC , cp_emitdate DESC , cp_createdate DESC");

	app_dp = new DataPager(cps, page_items); // 設定資料分頁每頁筆數
	cps = app_dp.getPageContent(pageno);
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
<%@include file="include/web_title.jsp"%>
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
					<div class="searchBar">

						<div class="sB_item">日期範圍：</div>
						<div class="sB_item sB_select">
							<select name="qyear" title="請選擇日期範圍">
								<option value="">所有日期</option>
								<%
									//不重複的上架日期年份
									Vector<QueryResult> years = app_sm.queryResult("select distinct DATE_FORMAT(cp_emitdate,'%Y') from " + tblcp + " where cp_code='" + page_code + "'");
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

						<div class="sB_item">查詢範圍：</div>
						<div class="sB_item sB_text">
							<input type="text" placeholder="請輸入壯遊名稱" name="qstr" value="<%=qstr%>" />
						</div>

						<div class="sB_item sB_submit">
							<input type="submit" value="查詢" title="進行查詢" />
						</div>
						<div class="clearfloat"></div>
					</div>
				</form>

				<div class="NewsListArea">
                <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
	            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a>				
					<%
						for (QueryResult cp : cps) {
					%>
					<div class="NewsList">
						<div class="NL_tit">
							<a href="../service/<%=page_code %>_in.jsp?no=<%=cp.getString("cp_id")%>" title="前往<%=cp.getString("cp_title")%>">
								<%=cp.getString("cp_title")%>
							</a>
						</div>
						<div class="NL_time">
							<%=cp.getString("cp_emitdate")%>
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