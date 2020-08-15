<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "donate";

	//取得資料
	Vector<TableRecord> cps = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { page_code, lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
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

                <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
	            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a>				
				<div class="qa_list_area">
                	
					<%
						for(int i=0;i<cps.size();i++){ 
							TableRecord cp = cps.get(i);
					%>
                    <div class="qa_list<%=i==0?" active":""%>">
                    	
                        <div class="qaL_tit">
                        	<%=cp.getString("cp_title") %>
                        </div>
                        
                        <div class="qaL_text" style="display: block;">
                        	<%=cp.getString("cp_content").replaceAll("(\r\n|\n)", "<br />")  %>
                        </div>
                        
                    </div>
					<%} %>					                    

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