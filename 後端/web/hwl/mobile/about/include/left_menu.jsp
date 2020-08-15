<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">
	<div class="leftList<%=page_code.equals("news")?" active":""%>">
		<a href="../about/news.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("news."+lang) %>"> <%=AppConfig.getProperty("news."+lang) %> </a>
	</div>
	<%
		for (TableRecord cp : abouts) {
	%>
	<div class="leftList<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
		<a href="../about/about.jsp?no=<%=cp.getString("cp_id")%>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=cp.getString("cp_title")%>">
			<%=cp.getString("cp_title")%>
		</a>
	</div>
	<%
		}
	%>
	<div class="leftList<%=(!page_code.equals("about") && !page_code.equals("news"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=AppConfig.getProperty("unfolded."+lang) %><%=AppConfig.getProperty("friend."+lang) %><%=AppConfig.getProperty("menu."+lang) %>"> <%=AppConfig.getProperty("friend."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("about_qa")?" active":""%>">
				<a href="../about/about_qa.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("aboutQa."+lang) %>"> <%=AppConfig.getProperty("aboutQa."+lang) %> </a>
			</div>
			<%
				Vector<TableRecord> friends = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "friend", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : friends) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../about/friend.jsp?no=<%=cp.getString("cp_id")%>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>
			<div class="lLO_list<%=page_code.equals("fame")?" active":""%>">
				<a href="../about/fame.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("fame."+lang) %>"> <%=AppConfig.getProperty("fame."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("story")?" active":""%>">
				<a href="../about/story.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("story."+lang) %>"> <%=AppConfig.getProperty("story."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("study")?" active":""%>">
				<a href="../about/study.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("study."+lang) %>"> <%=AppConfig.getProperty("study."+lang) %> </a>
			</div>
		</div>
	</div>
</div>