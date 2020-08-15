<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="<%=AppConfig.getProperty("indexTitle." + lang)%>">
		<%=AppConfig.getProperty("index." + lang)%>
	</a>
	&gt;
	<%=AppConfig.getProperty("college." + lang)%>
	<%
		if (page_code.equals("teacher")) {
	%>
	&gt;
	<%=AppConfig.getProperty("teacher." + lang)%>
	<%
		if (cp_no != null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>：<%=cp_no.getString("cp_no")%>
	<%
		}
	%>
	
	<%
		} else if (page_code.equals("schoolnews")) {
	%>
	&gt; <%=show_str.get("news."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title")%>
	<%
		}
	%>
	
	<%
		} else if (page_code.equals("school_qa")) {
	%>
	&gt;  <%=show_str.get("school_qa."+lang) %>
	<%
		} else if (page_code.equals("about_s")) {
	%>
	&gt;
	<%=AppConfig.getProperty("aboutS." + lang)%>
	<%
		} else if (page_code.equals("world")) {
	%>
	&gt;
	<%=AppConfig.getProperty("world." + lang)%>
	<%
		if (cp_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;  <%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("activity")) {
	%>
	&gt;
	<%=AppConfig.getProperty("activity." + lang)%>
	<%
		if (cp_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;  <%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("issue")||page_code.equals("issue_in")) {
	%>
	&gt;  <%=show_str.get("issue."+lang) %>
	<%
		if (ip_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;  <%=ip_no.getString("ip_title")%>
	<%
		}
	%>
	<%
		} 
	%>
</div>