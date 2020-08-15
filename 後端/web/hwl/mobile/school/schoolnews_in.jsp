<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "schoolnews";

	//取得使用者選取ID文案
	no = StringTool.validString(request.getParameter("no"));
	np_no = app_sm.select(tblnp, no);

	//若查無資料,跳回列表頁
	Vector<TableRecord> nps = app_sm.selectAll(tblnp, "np_id=? AND np_lang=? AND (? BETWEEN DATE_FORMAT(np_emitdate,'%Y/%m/%d') and DATE_FORMAT(np_restdate,'%Y/%m/%d'))", new Object[] { no, lang, app_today }, "np_showseq ASC , np_emitdate DESC , np_createdate DESC");
	if (nps.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../about/news.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../about/news.jsp'; </script>");
		}
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=np_no.getString("np_robots")%>" />
<meta name="revisit-after" content="<%=np_no.getString("np_revisit_after")%> days" />
<meta name="keywords" content="<%=np_no.getString("np_keywords")%>" />
<meta name="copyright" content="<%=np_no.getString("np_copyright")%>" />
<meta name="description" content="<%=np_no.getString("np_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=np_no.getString("np_seo_track")%><%-- 追蹤碼 --%>

<%-- 單筆文案CSS --%>
<%if(!np_no.getString("np_css").equals("")){%>
<style>
	<%=np_no.getString("np_css")%>
</style>
<%} %>
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
			<%--accesskey 導盲磚定位點 快捷鍵設計 --%>
	            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a>				
 
				<div class="NewsListArea title">
                    <div class="NewsList">
                        <div class="NL_tit">
							<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title") %>
                        </div>
                        <div class="NL_time">
                          	<%=np_no.getString("np_emitdate") %>
                        </div>
                    </div>
                </div>
                
				<!--網編區-->
				
	            <section class="textArea">
					<%=np_no.getString("np_content") %>
	            </section>
	            
	            <div class="back_but">
	            	<input type="button" onclick="javascript:history.back();" value="<%=show_str.get("goback."+lang) %>" title="<%=show_str.get("goback."+lang) %>" />
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