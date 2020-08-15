<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "issue_in";

	//取得使用者選擇ID類別
	no = StringTool.validString(request.getParameter("no"));
	ip_no = app_sm.select(tblip, no);

	//若查無資料,跳回列表頁
	Vector<TableRecord> ips = app_sm.selectAll(tblip, "ip_id=? AND ip_lang=? and ip_display=?", new Object[] { no, lang, "Y" });
	if (ips.size() == 0) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../school/issue.jsp'; </script>");
		} else {
			out.write("<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../school/issue.jsp'; </script>");
		}
		return;
	}
	
	TableRecord member = (TableRecord) session.getAttribute("member");
					
	Vector<TableRecord> irs = app_sm.selectAll(tblir,"ir_no=?",new Object[]{ip_no.getString("ip_id")},"ir_createdate ASC");
	
	ip_no.setValue("ip_view", ip_no.getInt("ip_view")+1);
	app_sm.update(ip_no);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=ip_no.getString("ip_robots")%>" />
<meta name="revisit-after" content="<%=ip_no.getString("ip_revisit_after")%> days" />
<meta name="keywords" content="<%=ip_no.getString("ip_keywords")%>" />
<meta name="copyright" content="<%=ip_no.getString("ip_copyright")%>" />
<meta name="description" content="<%=ip_no.getString("ip_description")%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=ip_no.getString("ip_seo_track")%><%-- 追蹤碼 --%>

<%-- 單筆文案CSS --%>
<%if(!ip_no.getString("ip_css").equals("")){%>
<style>
	<%=ip_no.getString("ip_css")%>
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
				<%
					if (member != null) {
				%>
				<div class="member_name">
					<%
						if (lang.equals("tw")) {
					%>
					<%=member.getString("mp_nickname")%>
					您好！
					<%
						} else {
					%>
					Hello
					<%=member.getString("mp_nickname")%>
					！
					<%
						}
					%>
				</div>
				<%
					}
				%>
				<div class="menuBar">					
					<div class="mB_link">
						<%if(member == null){ %>
						<a href="../school/add.jsp"><%=AppConfig.getProperty("signUp."+lang) %></a>
						<a href="../school/login.jsp"><%=AppConfig.getProperty("logIn."+lang) %></a>
						<%}else{ %>						
						<a href="../school/modify.jsp"><%=AppConfig.getProperty("modify."+lang) %></a>
						<a href="../school/member_update.jsp?action=logout"><%=AppConfig.getProperty("logOut."+lang) %></a>
						<%} %>
					</div>
				</div>
				<div class="clearfloat"></div>
				
				<form action="issue.jsp" method="post">
				<div class="searchBar member">
					<div class="sB_bigInput">
						<input type="text" placeholder="<%=AppConfig.getProperty("searchPlaceholder2."+lang) %>" name="qstr" />
					</div>

					<div class="sB_but">
						<input type="submit" value="<%=AppConfig.getProperty("search."+lang) %>" title="<%=AppConfig.getProperty("searchTitle."+lang) %>" />
					</div>
					<div class="clearfloat"></div>
				</div>
				</form>
				
				<div class="maa_tit issue_in"><%=ip_no.getString("ip_title") %></div>

				<div class="issue_reply_area">
					<div class="isa_list">
						<div class="isa_author"><%=ip_no.getString("ip_createuser") %></div>
						<div class="isa_date"><%=ip_no.getString("ip_createdate").replace("/","-").replace(" ","　") %></div>
						<div class="clearfloat"></div>
						<div class="isa_reply">
							<%=ip_no.getString("ip_content") %>
						</div>						
					</div>
					<%for(TableRecord ir : irs){ %>
					<div class="isa_list">
						<div class="isa_author"><%=ir.getString("ir_createuser") %></div>
						<div class="isa_date"><%=ir.getString("ir_createdate").replace("/","-").replace(" ","　") %></div>
						<div class="clearfloat"></div>
						<div class="isa_reply">
							<%=ir.getString("ir_content") %>
						</div>						
					</div>
					<%} %>
				</div>
				
				<%if(member != null && member.getString("mp_status").equals("Y")){ %>
				<form name="form_reply" id="form_reply" method="post" action="issue_update.jsp?action=reply&ip_id=<%=ip_no.getString("ip_id") %>" onsubmit="return checkform(this);">
					<textarea name="ir_content" id="ir_content"></textarea>
					<div class="maa_btn">
						<input type="button" onclick="javascript:history.back();" value="<%=AppConfig.getProperty("back."+lang) %>" title="<%=AppConfig.getProperty("backTitle."+lang) %>" />
						<input type="submit" value="<%=AppConfig.getProperty("submit."+lang) %>" title="<%=AppConfig.getProperty("submitTitle."+lang) %>"/>
					</div>
				</form>
				<%}else{ %>
				<div class="back_but">
	            	<input type="button" onclick="javascript:history.back();" value="<%=AppConfig.getProperty("back."+lang) %>" title="<%=AppConfig.getProperty("backTitle."+lang) %>" />
	            </div>
				<%} %>				
				
			</div>

			<div class="clearfloat"></div>

		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>