<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "digit";
	//列表分頁筆數設定
	int page_items = 10;

	//取得類別
	Vector<TableRecord> dms = app_sm.selectAll(tbldm, "dm_code=? and dm_lang=?", new Object[] { page_code + "_category", lang }, "dm_showseq ASC , dm_createdate DESC");

	//取得使用者選擇ID類別
	no = StringTool.validString(request.getParameter("no"));
	TableRecord dm_no = app_sm.select(tbldm, no);

	//若無選擇,且總資料數大於0,取第一筆
	if ((!dm_no.getString("dm_display").equals("Y") || dm_no.getString("dm_id").equals("")) && dms.size() > 0) {
		dm_no = dms.get(0);
	}

	String[] names = new String[] { "npage", "no" };
	String[] values = new String[] { String.valueOf(pageno), dm_no.getString("dm_id") };

	//取得資料
	Vector<TableRecord> bds = app_sm.selectAll(tblbd, "bd_category=? AND bd_code=? AND bd_lang=? AND (? BETWEEN DATE_FORMAT(bd_emitdate,'%Y/%m/%d') and DATE_FORMAT(bd_restdate,'%Y/%m/%d'))", new Object[] { dm_no.getString("dm_id"), page_code, lang, app_today }, "bd_showseq ASC , bd_emitdate DESC , bd_createdate DESC");

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

				<div class="topListArea">
					<%
						for (TableRecord dm : dms) {
					%>
					<div class="tLA_list<%=dm.getString("dm_id").equals(dm_no.getString("dm_id")) ? " active" : ""%>">
						<a href="../book/digit.jsp?no=<%=dm.getString("dm_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=dm.getString("dm_title")%>">
							<%=dm.getString("dm_title")%>
						</a>
					</div>
					<%
						}
					%>
				</div>

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
								<img src="<%=app_fetchpath + "/digit/" + lang + "/" + bd.getString("bd_image")%>" alt="<%=bd.getString("bd_alt")%>" title="<%=bd.getString("bd_alt")%>" />
							</a>
						</div>
						<% if(bd.getString("bd_author_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("author."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_author")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd.getString("bd_painter_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("illustration."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_painter")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd.getString("bd_isbn_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit">ISBN：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_isbn")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd.getString("bd_publishing_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("pub_date."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_publishing")%>
								</span>
							</div>
						</div>
						<% } %>
						
						<%-- 
						<div class="sLl_item">
							<div class="sLli_tit">格式：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_format")%>
								</span>
							</div>
						</div>
						<div class="sLl_item">
							<div class="sLli_tit">定價：</div>
							<div class="sLli_content">
								<span>
									<%=bd.getString("bd_price")%>
								</span>
							</div>
						</div>
						--%>
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