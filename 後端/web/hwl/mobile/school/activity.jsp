<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "activity";

	//取得資料
	Vector<TableRecord> cps = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { page_code, lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");

	//改列表式 
	//定義表單分頁值
	String[] names = new String[] { "npage" };
	String[] values = new String[] { String.valueOf(pageno) };
	//列表分頁筆數設定
	int page_items = 10;
	
	/*
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
	*/
	app_dp = new DataPager(cps, page_items); // 設定資料分頁每頁筆數
	cps = app_dp.getPageContent(pageno);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
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
			
				<%--accesskey 導盲磚定位點 快捷鍵設計 --%>
	            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a> 
				<div class="NewsListArea">
					<%
						for (TableRecord cp : cps) {
					%>
					<div class="NewsList">
						<div class="NL_tit">
							<a href="../school/activity_in.jsp?no=<%=cp.getString("cp_id") %>" title="前往<%=cp.getString("cp_title")%>">
							    <%=cp.getString("cp_title")%>
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