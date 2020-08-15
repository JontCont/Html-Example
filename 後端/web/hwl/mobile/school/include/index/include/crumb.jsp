<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="<%=AppConfig.getProperty("indexTitle."+lang) %>"> <%=AppConfig.getProperty("index."+lang) %> </a>
	&gt; <%=AppConfig.getProperty("aboutUs."+lang) %>
	<%
		if (page_code.equals("about")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("news")) {
	%>
	&gt; <%=AppConfig.getProperty("news."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title")%>
	<%
		}
	%>
	<%
		
		}else if(page_code.equals("contact")){ 
	%>
		&gt;
		<%=cp_no.getString("cp_title")%>
		
    <% } 
		
	%>

</div>