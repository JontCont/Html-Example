<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="<%=AppConfig.getProperty("indexTitle."+lang) %>"> <%=AppConfig.getProperty("index."+lang) %> </a>
	&gt; <%=AppConfig.getProperty("publicInformation."+lang) %>
	<%
		if (page_code.equals("white")) {
	%>
	&gt; <%=AppConfig.getProperty("white."+lang) %>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("public")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("donate")) {
	%>
	&gt; <%=AppConfig.getProperty("donateQa."+lang) %>
	<%
		}
	%>
</div>