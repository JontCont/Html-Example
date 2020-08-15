<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="點擊返回首頁"> <%=show_str.get("index."+lang) %> </a>
	&gt; <%=show_str.get("service."+lang) %>
	<%
		if (page_code.equals("service")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("white")) {
	%>
	&gt; <%=show_str.get("white."+lang) %>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("vision")|| page_code.equals("vision_introduct") || page_code.equals("case") || page_code.equals("disease") || page_code.equals("discuss") || page_code.equals("aids")) {
	%>
	&gt; <%=show_str.get("vision."+lang) %>
	<%
		if (page_code.equals("vision")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("case")) {
	%>
	&gt; <%=show_str.get("case."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("disease")) {
	%>
	&gt; <%=show_str.get("disease."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("discuss")) {
	%>
	&gt; <%=show_str.get("discuss."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("aids")) {
	%>
	&gt; <%=show_str.get("aids."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("employer") || page_code.equals("employee") || page_code.equals("employee_introduct")) {
	%>
	&gt; <%=show_str.get("employee."+lang) %>
	<%
		if (page_code.equals("employer")) {
	%>
	&gt; <%=show_str.get("employer."+lang) %>
	<%
		}
	%>
	<%
		if (page_code.equals("employee")) {
	%>
	&gt; <%=show_str.get("employee_j."+lang) %>
	<%
		}
	%>
	<%
		} else if (page_code.equals("home") || page_code.equals("share") || page_code.equals("service_qa")) {
	%>
	&gt; <%=show_str.get("home."+lang) %>
	<%
		if (page_code.equals("home")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("share")) {
	%>
	&gt; <%=show_str.get("share."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("service_qa")) {
	%>
	&gt; <%=show_str.get("service_qa."+lang) %>
	<%
		}
	%>
	<%
		} else if(page_code.equals("event") || page_code.equals("event_introduct") || page_code.equals("highlight")||page_code.equals("history")||page_code.equals("food")) {
	%>
	&gt; <%=show_str.get("event."+lang) %>
	<%
		if (page_code.equals("event")) {
	%>
	&gt; <%=show_str.get("event_s."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=np_no.getString("np_no").equals("") ? "" : "(" + np_no.getString("np_no") + ")"%><%=np_no.getString("np_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("highlight")) {
	%>
	&gt; <%=show_str.get("highlight."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("history")) {
	%>
	&gt; <%=show_str.get("history."+lang) %>
	<%
	if (cp_no!= null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;  <%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		} else if (page_code.equals("food")) {
	%>
	&gt; <%=show_str.get("food."+lang) %>
	<%
		if (!StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<%
		}
	%>
	<%
		}
		}else if(page_code.equals("service_contact")){
	%>
	&gt; <%=show_str.get("service_contact."+lang) %>
	<% }else if (page_code.equals("service_download")){ %>
	&gt; <%=show_str.get("download."+lang) %>
	&gt;
	<%=cp_no.getString("cp_title")%>
	<% } %>
</div>