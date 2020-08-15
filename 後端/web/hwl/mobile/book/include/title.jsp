<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="inTit has_show">
	<%
		if (lang.equals("tw")) {
	%>
	<div class="inTit_text"><%=show_str.get("publish.tw") %></div>
	<%
		}
	%>
	<div class="inTit_text"><%=show_str.get("publish.en") %></div>
</div>