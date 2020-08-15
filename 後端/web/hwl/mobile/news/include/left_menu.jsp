<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">
    <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
    <a accesskey="L" title="左選單區" href="#left_menu_access" id="left_menu_access">:::</a>
	<div class="leftList<%=(page_code.equals("epaper"))?" active":""%>">
		<a href="../news/epaper.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("epaper."+lang)%>">
			 <%=show_str.get("epaper."+lang) %>
		</a>
	</div>
	<div class="leftList<%=(page_code.equals("media"))?" active":""%>">
		<a href="../news/media.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("media."+lang)%>">
			 <%=show_str.get("media."+lang) %>
		</a>
	</div>
	<div class="leftList<%=(page_code.equals("video"))?" active":""%>">
		<a href="../news/video.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("video."+lang)%>">
			 <%=show_str.get("video."+lang) %>
		</a>
	</div>
	
	<div class="leftList<%=(page_code.equals("about_qa") || page_code.equals("friend") || page_code.equals("fame") ) || page_code.equals("story") || page_code.equals("study")?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang)%><%=show_str.get("about_qa."+lang)%><%=show_str.get("detail."+lang)%>">  <%=show_str.get("about_qa."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("about_qa")?" active":""%>">
				<a href="../news/about_qa.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("friend."+lang)%>">  <%=show_str.get("friend."+lang) %> </a>
			</div>
			<%
				Vector<TableRecord> friends = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "friend", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : friends) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../news/friend.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>
			<div class="lLO_list<%=page_code.equals("fame")?" active":""%>">
				<a href="../news/fame.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("fame."+lang)%>">  <%=show_str.get("fame."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("story")?" active":""%>">
				<a href="../news/story.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("story."+lang)%>">  <%=show_str.get("story."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("study")?" active":""%>">
				<a href="../news/study.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("study."+lang)%>">  <%=show_str.get("study."+lang) %> </a>
			</div>
		</div>
	</div>
	
	<div class="leftList<%=page_code.equals("visually_policy")?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang)%><%=show_str.get("visually_policy."+lang)%><%=show_str.get("detail."+lang)%>">  <%=show_str.get("visually_policy."+lang) %> </a>
		<div class="leftListOpen">
		 	<%
				for (TableRecord cp : visually_policys) {
			%>
			<div class="lLO_list<%=cp_no != null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../news/visually_policy.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>
		</div>
	</div>
	
    <%
		for (TableRecord cp : messages) {
	%>
	<div class="leftList<%=cp_no != null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
		<a href="../news/message.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
			<%=cp.getString("cp_title")%>
		</a>
	</div>
	<%
		}
	%>
	
	<%--此模組轉移至幫助愛盲
	<div class="leftList<%=(page_code.equals("volunteer"))?" active":""%>">
		<a href="../news/volunteer.jsp" title="<%=show_str.get("go."+lang) %>志工訊息">
			志工訊息
		</a>
	</div>
	--%>
</div>