<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">
	<%
		Vector<TableRecord> contacts = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "contact", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
		for (TableRecord cp : contacts) {
	%>
	<div class="leftList<%=cp_no != null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
		<a href="../contact/contact.jsp?no=<%=cp.getString("cp_id")%>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=cp.getString("cp_title")%>">
			<%=cp.getString("cp_title")%>
		</a>
	</div>
	<%
		}
	%>
</div>