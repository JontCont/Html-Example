<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--左側表單名稱-->
<div class="leftList_tit" title="<%=show_str.get("public."+lang) %>">
<%=show_str.get("public."+lang) %>
</div>
<div class="leftListArea">
    <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
    <a accesskey="L" title="左選單區" href="#left_menu_access" id="left_menu_access">:::</a>
	<%--此模組轉移至愛盲服務 
	<div class="leftList<%=(page_code.equals("white"))?" active":""%>">
		<a href="javascript:void(0);" title="點擊展開認識視障朋友細項"> 白手杖愛盲 </a>
		<div class="leftListOpen">			
			<%
				Vector<TableRecord> whites = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "white", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : whites) {
			%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../public/white.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%
				}
			%>			
		</div>
	</div>
	--%>
	
	<!--Judy修改20190125_Start-->
	<% for(TableRecord left_dm:public_dms){ %>
    <div class="leftList<%=cp_no!= null && cp_no.getString("cp_category").equals(left_dm.getString("dm_id"))? " active" : "" %>">
        <a href="javascript:void(0);" title="<%=show_str.get("click."+lang) %><%=left_dm.getString("dm_title") %>">
        	<%=left_dm.getString("dm_title") %>
        </a>
        
        <!--展開選單-->
        <div class="leftList_open<%=cp_no!= null && cp_no.getString("cp_category").equals(left_dm.getString("dm_id"))? " active" : "" %>">
			<%
			// 取出文案列表
			Vector<TableRecord> publics = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_category=? and cp_display=?", new Object[] { "public", lang,left_dm.getString("dm_id"), "Y" }, "cp_showseq ASC, cp_createdate DESC");
			for (TableRecord cp : publics) {
			%>
			<div class="leftList_open_list<%=(cp_no!= null && cp_no.getString("cp_id").equals(cp.getString("cp_id"))) ? " active" : ""%>">
				<a href="../public/public.jsp?no=<%=cp.getString("cp_id") %>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title") %>"> <%=cp.getString("cp_title") %> </a>
			</div>
			<% } %>
        </div> 
                               
    </div>
	<% } %>
	
	<%-- 改為1層類別文案
	<%
		for (TableRecord cp : publics) {
	%>
	<div class="leftList<%=(cp_no!= null && cp_no.getString("cp_id").equals(cp.getString("cp_id"))) ? " active" : ""%>">
		<a href="../public/public.jsp?no=<%=cp.getString("cp_id") %>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title") %>"> <%=cp.getString("cp_title") %> </a>
	</div>
	<%
		}
	%>	
	--%>
	
	<%--此模組轉移至幫助愛盲 
	<div class="leftList<%=(page_code.equals("donate")) ? " active" : ""%>">
		<a href="../public/donate_qa.jsp" title="<%=show_str.get("go."+lang) %>捐款Q&amp;A"> 捐款Q&amp;A </a>
	</div>
	--%>
</div>