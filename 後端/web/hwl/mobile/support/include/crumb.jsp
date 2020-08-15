<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="點擊返回首頁"> <%=show_str.get("index."+lang) %> </a>
	&gt; <%=show_str.get("support."+lang) %>
	<%
		if (page_code.equals("project")) {
	%>
	&gt; <%=show_str.get("project."+lang) %>
	<%
	if (dp_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt; 
	<%=dp_no.getString("dp_title")%>
	<%
		}
	%>		
	<%
		}else if (page_code.equals("volunteer")) {
	%>
	&gt; <%=show_str.get("volunteer."+lang) %>	
	<%
	if (np_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt; 
	<%=np_no.getString("np_title")%>
	<%
		}
	%>		
	<%
		} else if (page_code.equals("support")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>	
	<%
		}else {
	%>
    &gt; <%=show_str.get("donate_qa."+lang) %>	
	
	<% } %>
</div>