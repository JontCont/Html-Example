<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">

    <%--accesskey 導盲磚定位點 快捷鍵設計 --%>
    <a accesskey="L" title="左選單區" href="#left_menu_access" id="left_menu_access">:::</a>
    
    
    
    
	<%-- 關於我們 --%>
	<div class="leftList<%=page_code.equals("about_s")?" active":""%>">
		<a href="../school/about_s.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("about_s."+lang)%>">  <%=show_str.get("about_s."+lang) %> </a>
	</div>
	
	
	
	<%-- 最新消息 --%>
	<div class="leftList<%=page_code.equals("schoolnews")?" active":""%>">
		<a href="../school/schoolnews.jsp" title="<%=show_str.get("click."+lang) %><%=show_str.get("news."+lang)%>">  <%=show_str.get("news."+lang) %> </a>
	</div>
	
	
	
	<%--課程 - 總攬連結 --%>
	<div class="leftList<%=page_code.equals("school_course")?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang) %><%=show_str.get("school_course."+lang)%><%=show_str.get("detail."+lang) %>">  <%=show_str.get("school_course."+lang) %> </a>
		<div class="leftListOpen">
		<%Vector<TableRecord> school_courses = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "school_course", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : school_courses) {%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../school/school_course.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%}%>
	    </div>
	</div>
	
	
	
     <!--國際證照-->           
    <div class="leftList">
        <a href="javascript:void(0);" title="點擊展開">
        	國際證照
        </a>
    </div> 
    
    
    
 <!--師資介紹--> 
	<div class="leftList<%=page_code.equals("teacher")?" active":""%>">
		<a href="../school/teacher.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("teacher."+lang)%>">  <%=show_str.get("teacher."+lang) %> </a>
	</div>
	
	
	
	 <!--學員分享--> 
	<div class="leftList<%=page_code.equals("issue")?" active":""%>">
		<a href="../school/issue.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("issue."+lang)%>">  <%=show_str.get("issue."+lang) %> </a>
	</div>
	
	
	
	 <!--友好活動--> 
	<div class="leftList<%=page_code.equals("activity")?" active":""%>">
		<a href="../school/activity.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("activity."+lang)%>">  <%=show_str.get("activity."+lang) %> </a>
	</div>
	
	
	
	<!--世界廣角鏡--> 
	<div class="leftList<%=page_code.equals("world")?" active":""%>">
		<a href="javascript:void(0);" title="<%=show_str.get("click."+lang) %><%=show_str.get("world."+lang)%><%=show_str.get("detail."+lang) %>">  <%=show_str.get("world."+lang) %> </a>
		<div class="leftListOpen">
		<%Vector<TableRecord> worlds = app_sm.selectAll(tblcp, "cp_code=? and cp_lang=? and cp_display=?", new Object[] { "world", lang, "Y" }, "cp_showseq ASC, cp_createdate DESC");
				for (TableRecord cp : worlds) {%>
			<div class="lLO_list<%=cp_no!=null && cp_no.getString("cp_id").equals(cp.getString("cp_id")) ? " active" : ""%>">
				<a href="../school/world.jsp?no=<%=cp.getString("cp_id")%>" title="<%=show_str.get("go."+lang) %><%=cp.getString("cp_title")%>">
					<%=cp.getString("cp_title")%>
				</a>
			</div>
			<%}%>
	    </div>
	</div>
	
	
	<!--愛盲學院粉絲團--> 
	<div class="leftList">
		<a target="_blank" href="<%=SiteSetup.getSetup("cp.fb3" + "." + lang).getString("ss_text")%>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=show_str.get("school."+lang) %><%=show_str.get("blank."+lang)%>">
			<span> <%=show_str.get("school_fb."+lang) %> </span>
		</a>
	</div>
	
	
	<!--常見問題Q&A--> 
	<div class="leftList<%=page_code.equals("school_qa")?" active":""%>">
		<a href="../school/school_qa.jsp" title="<%=show_str.get("click."+lang) %><%=show_str.get("school_qa."+lang)%><%=show_str.get("school_qa."+lang) %>">  <%=show_str.get("school_qa."+lang) %> </a>
	</div>
</div>