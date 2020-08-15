<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "double";
	//列表分頁筆數設定
	int page_items = 10;

	String[] names = new String[] { "npage" };
	String[] values = new String[] { String.valueOf(pageno) };

	//取得資料
	Vector<TableRecord> bds = app_sm.selectAll(tblbd, "bd_code=? AND bd_lang=? AND (? BETWEEN DATE_FORMAT(bd_emitdate,'%Y/%m/%d') and DATE_FORMAT(bd_restdate,'%Y/%m/%d'))", new Object[] { page_code, lang, app_today }, "bd_showseq ASC , bd_emitdate DESC , bd_createdate DESC");

	//若資料總數為0
	if (bds.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../index/index.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../index/index.jsp'; </script>");
		}
		return;
	}

	app_dp = new DataPager(bds, page_items); // 設定資料分頁每頁筆數
	bds = app_dp.getPageContent(pageno);
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
						for (TableRecord bd : bds) {
					%>
					<div class="squareList">
						<div class="sLl_tit book">
							<a href="<%=bd.getString("bd_url")%>" target="_blank" title="<%=AppConfig.getProperty("openLink." + lang)%><%=bd.getString("bd_title")%>">
								<%=bd.getString("bd_title")%>
							</a>
						</div>
						<div class="sLl_img book">
							<a href="<%=bd.getString("bd_url")%>" target="_blank" title="<%=bd.getString("bd_alt")%>">
								<img src="<%=app_fetchpath + "/double/" + lang + "/" + bd.getString("bd_image")%>" alt="<%=bd.getString("bd_alt")%>" title="<%=bd.getString("bd_alt")%>" />
							</a>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit"><%=AppConfig.getProperty("author." + lang)%>：
							</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_author")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit"><%=AppConfig.getProperty("painter." + lang)%>：
							</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_painter")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit">ISBN：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_isbn")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit"><%=AppConfig.getProperty("publishing." + lang)%>：
							</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_publishing")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit"><%=AppConfig.getProperty("format." + lang)%>：
							</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_format")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit"><%=AppConfig.getProperty("price." + lang)%>：
							</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_price")%>
								</span>
							</div>
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