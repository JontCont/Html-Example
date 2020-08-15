<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "entity";

	//取得類別
	Vector<TableRecord> dms = app_sm.selectAll(tbldm, "dm_code=? and dm_lang=?", new Object[] { page_code+"_category", lang }, "dm_showseq ASC , dm_createdate DESC");
	
	//取得使用者選擇ID類別
	no = StringTool.validString(request.getParameter("no"));
	bd_no = app_sm.select(tblbd, no);
	TableRecord dm_no = app_sm.select(tbldm, bd_no.getString("bd_category"));

	//若查無資料,跳回列表頁
	Vector<TableRecord> bds = app_sm.selectAll(tblbd, "bd_id=? AND bd_lang=? AND (? BETWEEN DATE_FORMAT(bd_emitdate,'%Y/%m/%d') and DATE_FORMAT(bd_restdate,'%Y/%m/%d'))", new Object[] { no, lang, app_today }, "bd_showseq ASC , bd_emitdate DESC , bd_createdate DESC");
	if (bds.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../book/entity.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../book/entity.jsp'; </script>");
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
<meta name="Robots" content="<%=bd_no.getString("bd_robots")%>" />
<meta name="revisit-after" content="<%=bd_no.getString("bd_revisit_after")%> days" />
<meta name="keywords" content="<%=bd_no.getString("bd_keywords")%>" />
<meta name="copyright" content="<%=bd_no.getString("bd_copyright")%>" />
<meta name="description" content="<%=bd_no.getString("bd_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=bd_no.getString("bd_seo_track")%><%-- 追蹤碼 --%>

<%-- 單筆文案CSS --%>
<%if(!bd_no.getString("bd_css").equals("")){%>
<style>
	<%=bd_no.getString("bd_css")%>
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

				<div class="topListArea">
					<%
						for(TableRecord dm : dms){ 
					%>
					<div class="tLA_list<%=dm.getString("dm_id").equals(dm_no.getString("dm_id"))?" active":""%>">
						<a href="../book/entity.jsp?no=<%=dm.getString("dm_id") %>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=dm.getString("dm_title")%>">
							<%=dm.getString("dm_title")%>
						</a>
					</div>
					<%} %>
				</div>

				<%--專案列表--%>
				<div class="squareListArea in">
					
					<div class="squareList">
						<div class="sLl_tit book">
							<%=bd_no.getString("bd_title")%>
						</div>
						<div class="sLl_img book">							
							<img src="<%=app_fetchpath + "/entity/" + lang + "/" + bd_no.getString("bd_image")%>" alt="<%=bd_no.getString("bd_alt")%>" title="<%=bd_no.getString("bd_alt")%>" />
						</div>
						
						<% if(bd_no.getString("bd_author_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("author."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd_no.getString("bd_author")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd_no.getString("bd_painter_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("illustration."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd_no.getString("bd_painter")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd_no.getString("bd_isbn_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit">ISBN：</div>
							<div class="sLli_content">
								<span>
									<%=bd_no.getString("bd_isbn")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd_no.getString("bd_publishing_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("pub_date."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd_no.getString("bd_publishing")%>
								</span>
							</div>
						</div>
						<% } %>
						<% if(bd_no.getString("bd_format_display").equals("Y")){ %>
						<div class="sLl_item">
							<div class="sLli_tit"><%=show_str.get("format."+lang) %>：</div>
							<div class="sLli_content">
								<span>
									<%=bd_no.getString("bd_format")%>
								</span>
							</div>
						</div>
						<% } %>
						<%-- 
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

					<div class="clearfloat"></div>
				</div>
				
				<%--簡介--%>
				<div class="introduction">
					<%=AppConfig.getProperty("introduction."+lang) %>
				</div>
				<%--網編區--%>
				<section class="textArea"> <%=bd_no.getString("bd_content")%> </section>
				
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