<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="<%=AppConfig.getProperty("indexTitle."+lang) %>"> <%=AppConfig.getProperty("index."+lang) %> </a>
	&gt; <%=AppConfig.getProperty("tfbNews."+lang) %>
	<%
		if (page_code.equals("epaper")) {
	%>
	&gt; <%=AppConfig.getProperty("epaper."+lang) %>
	
	<%
		}else if(page_code.equals("message")){
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	
	<%
		}else if(page_code.equals("visually_policy")){
	%>
	&gt; <%=show_str.get("visually_policy."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	
	<%
		} else if (page_code.equals("media")) {
	%>
	&gt; <%=AppConfig.getProperty("media."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("video")) {
	%>
	&gt; <%=AppConfig.getProperty("video."+lang) %>
	<%
		} else if (page_code.equals("volunteer")) {
	%>
	&gt; <%=AppConfig.getProperty("volunteer."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title")%>
	<%
		}
	%>

	<%
		} else {
	%>
	&gt; <%=AppConfig.getProperty("friend."+lang) %>
	<%
		if (page_code.equals("about_qa")) {
	%>
	&gt; <%=AppConfig.getProperty("aboutQa."+lang) %>
	<%
		} else if (page_code.equals("friend")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("fame")) {
	%>
	&gt; <%=AppConfig.getProperty("fame."+lang) %>
	<%
		} else if (page_code.equals("story")) {
	%>
	&gt; <%=AppConfig.getProperty("story."+lang) %>
	<%
		} else if (page_code.equals("study")) {
	%>
	&gt; <%=AppConfig.getProperty("study."+lang) %>
	<%
		}
		}
	%>
</div>