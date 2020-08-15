<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "project";
	//列表分頁筆數設定
	int page_items = 10;
	
	String[] names = new String[] { "npage" };
	String[] values = new String[] { String.valueOf(pageno) };
	
	//取得資料
	Vector<TableRecord> dps = app_sm.selectAll(tbldp, "dp_code=? AND dp_lang=? AND (? BETWEEN DATE_FORMAT(dp_emitdate,'%Y/%m/%d') and DATE_FORMAT(dp_restdate,'%Y/%m/%d'))", new Object[] { page_code, lang, app_today }, "dp_showseq ASC , dp_emitdate DESC , dp_createdate DESC");
	
	//若資料總數為0
	if (dps.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../index/index.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../index/index.jsp'; </script>");
		}
		return;
	}
	
	app_dp = new DataPager(dps, page_items); // 設定資料分頁每頁筆數
	dps = app_dp.getPageContent(pageno);
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
					for(TableRecord dp : dps){ 
					%>
					<div class="squareList">
						<div class="sLl_tit">
							<a href="../support/project_in.jsp?no=<%=dp.getString("dp_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=dp.getString("dp_title")%>">
								<%=dp.getString("dp_title")%>
							</a>
						</div>
						<div class="sLl_img">
							<a href="../support/project_in.jsp?no=<%=dp.getString("dp_id")%>" title="<%=dp.getString("dp_title")%>">
								<img src="<%=app_fetchpath + "/project/" + lang + "/" + dp.getString("dp_image")%>" alt="<%=dp.getString("dp_alt")%>" title="<%=dp.getString("dp_title")%>" />
							</a>
						</div>
					</div>
					<%
						}
					%>

					<div class="clearfloat"></div>
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