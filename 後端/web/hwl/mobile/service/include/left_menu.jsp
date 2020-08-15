<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">	

	<%
		for (TableRecord cp : services) {
	%>
	<div class="leftList<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
		<a href="../service/service.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
			<%=cp.getString("cp_title")%>
		</a>
	</div>
	<%
		}
	%>
	
    <div class="leftList<%=(page_code.equals("white"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang)%><%=show_str.get("white."+lang)%><%=show_str.get("detail."+lang)%>"> <%=show_str.get("white."+lang) %> </a>
		<div class="leftListOpen">			
			<%
				Vector<TableRecord> whites = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "white", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : whites) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../service/white.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>			
		</div>
	</div>
	
	<div class="leftList<%=(page_code.equals("vision") || page_code.equals("vision_introduct")|| page_code.equals("case") || page_code.equals("disease") || page_code.equals("discuss") || page_code.equals("aids"))?" active":""%>">
		<a href="../service/vision_introduct.jsp" title="<%=show_str.get("click."+lang)%><%=show_str.get("vision."+lang)%><%=show_str.get("detail."+lang)%>"> <%=show_str.get("vision."+lang) %> </a>
		<div class="leftListOpen">
			<%
				Vector<TableRecord> visions = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "vision", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : visions) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../service/vision.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>
			<% if(lang.equals("tw")){ %>
			<div class="lLO_list<%=page_code.equals("case")?" active":""%>">
				<a href="../service/case.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("case."+lang)%>"> <%=show_str.get("case."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("disease")?" active":""%>">
				<a href="../service/disease.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("disease."+lang)%>"> <%=show_str.get("disease."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("discuss")?" active":""%>">
				<a href="../service/discuss.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("vision."+lang)%><%=show_str.get("related."+lang)%>"> <%=show_str.get("discuss."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("aids")?" active":""%>">
				<a href="../service/aids.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("aids."+lang)%>"> <%=show_str.get("aids."+lang) %> </a>
			</div>
			<% } %>
		</div>
	</div>
	<div class="leftList<%=(page_code.equals("employer") || page_code.equals("employee_introduct") ||page_code.equals("employee"))?" active":""%>">
		<a href="../service/employee_introduct.jsp" title="<%=show_str.get("click."+lang)%><%=show_str.get("employee."+lang)%><%=show_str.get("detail."+lang)%>"> <%=show_str.get("employee."+lang) %> </a>
		<% if(lang.equals("tw")){ %>
		<div class="leftListOpen">			
			<div class="lLO_list<%=page_code.equals("employer")?" active":""%>">
				<a href="../service/employer.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("employer."+lang)%>"> <%=show_str.get("employer."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("employee")?" active":""%>">
				<a href="../service/employee.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("employee_j."+lang)%>"> <%=show_str.get("employee_j."+lang) %> </a>
			</div>
		</div>
		<% } %>
	</div>
	<div class="leftList<%=(page_code.equals("home") || page_code.equals("share") || page_code.equals("service_qa"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang)%><%=show_str.get("home."+lang)%><%=show_str.get("detail."+lang)%>"> <%=show_str.get("home."+lang) %> </a>
		<div class="leftListOpen">
			<%
				Vector<TableRecord> homes = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "home", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : homes) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../service/home.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>
			<% if(lang.equals("tw")){ %>
			<div class="lLO_list<%=page_code.equals("share")?" active":""%>">
				<a href="../service/share.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("case."+lang)%><%=show_str.get("share."+lang)%>"> <%=show_str.get("share."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("service_qa")?" active":""%>">
				<a href="../service/service_qa.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("service_qa."+lang)%>"> <%=show_str.get("service_qa."+lang) %> </a>
			</div>
			<% } %>
		</div>
	</div>
	
	<% if(lang.equals("tw")){ %>
	<div class="leftList<%=(page_code.equals("event") || page_code.equals("event_introduct") || page_code.equals("highlight") || page_code.equals("history") || page_code.equals("food"))?" active":""%>">
		<a href="event_introduct.jsp" title="<%=show_str.get("click."+lang)%><%=show_str.get("event."+lang)%><%=show_str.get("detail."+lang)%>"> <%=show_str.get("event."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("event")?" active":""%>">
				<a href="../service/event.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("event_s."+lang)%>"> <%=show_str.get("event_s."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("highlight")?" active":""%>">
				<a href="../service/highlight.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("highlight."+lang)%>"> <%=show_str.get("highlight."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("history")?" active":""%>">
				<a href="../service/history.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("history."+lang)%>"> <%=show_str.get("history."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("food")?" active":""%>">
				<a href="../service/food.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("food."+lang)%>"> <%=show_str.get("food."+lang) %> </a>
			</div>
			
		</div>
	</div>
	<div class="leftList<%=(page_code.equals("service_download"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang)%><%=show_str.get("download."+lang)%>"> <%=show_str.get("download."+lang) %> </a>
        <div class="leftListOpen">
        <%
			Vector<TableRecord> downloads = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "service_download", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
			for (TableRecord cp : downloads) {
		%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../service/download.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
		<%
			}
		%>
		</div>
   </div>
   <% } %>
   
	<div class="leftList<%=page_code.equals("service_contact")?" active":""%>">
		<a href="../service/service_contact.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("service_contact."+lang) %>"> <%=show_str.get("service_contact."+lang) %> </a>
	</div>
</div>