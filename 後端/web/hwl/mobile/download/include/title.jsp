<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="inTit">
	<%
		if (lang.equals("tw")) {
	%>
	<div class="inTit_text"><%=AppConfig.getProperty("download.tw") %></div>
	<%
		}
	%>
	<div class="inTit_text"><%=AppConfig.getProperty("download.en") %></div>
</div>