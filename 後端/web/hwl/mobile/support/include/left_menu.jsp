<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">	
    <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
    <a accesskey="L" title="左選單區" href="#left_menu_access" id="left_menu_access">:::</a>
	
    <div class="leftList<%=(page_code.equals("project")) ? " active" : ""%>">
		<a href="../support/project.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("project."+lang)%>"> <%=show_str.get("project."+lang) %> </a>
	</div>
	
	<%
		for (TableRecord cp : supports) {
	%>
	<div class="leftList<%=(cp_no!= null && cp_no.getString("cp_id").equals(cp.getString("cp_id"))) ? " active" : ""%>">
		<a href="../support/support.jsp?no=<%=cp.getString("cp_id") %>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title") %>"> <%=cp.getString("cp_title") %> </a>
	</div>
	<%
		}
	%>
    <div class="leftList<%=(page_code.equals("volunteer"))?" active":""%>">
		<a href="../support/volunteer.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("volunteer."+lang)%>">
			<%=show_str.get("volunteer."+lang) %>
		</a>
	</div>
		<div class="leftList<%=(page_code.equals("donate")) ? " active" : ""%>">
		<a href="../support/donate_qa.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("donate_qa."+lang)%>"> <%=show_str.get("donate_qa."+lang) %> </a>
	</div>
	
</div>