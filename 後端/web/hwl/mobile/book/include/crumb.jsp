<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="crumb">
	<a href="../index/index.jsp" title="<%=show_str.get("go."+lang) %><%=show_str.get("index."+lang) %>"> <%=show_str.get("index."+lang) %> </a>
	&gt; <%=show_str.get("publish."+lang) %>
	<%
		if (page_code.equals("braille_s") || page_code.equals("braille_n") || page_code.equals("braille_m")) {
	%>
	&gt; <%=show_str.get("braille."+lang) %>
	<%
		if (page_code.equals("braille_s")) {
	%>
	&gt; <%=show_str.get("braille_s."+lang) %>
    <%
		} else if (page_code.equals("braille_n")) {
	%>
	&gt; <%=show_str.get("braille_n."+lang) %>
	<%
		} else if (page_code.equals("braille_m")) {
	%>
	&gt; <%=show_str.get("braille_m."+lang) %>
	<%  
	    }
		} else if (page_code.equals("magazine")) {
	%>
	&gt; <%=show_str.get("magazine."+lang) %> &gt;
	<%=cp_no.getString("cp_title")%>
	<%
		} else if (page_code.equals("entity") || page_code.equals("digit")) {
	%>
	&gt; <%=show_str.get("book."+lang) %>
	<%
		if (page_code.equals("entity")) {
	%>
	&gt; <%=show_str.get("entity."+lang) %>
	<%
		if (bd_no != null && !StringTool.validString(request.getParameter("no")).equals("")) {
	%>
	&gt;
	<%=bd_no.getString("bd_title")%>
	<%
		}
	%>
	<%
		}
	%>
	<%
		if (page_code.equals("digit")) {
	%>
	&gt; <%=show_str.get("digit."+lang) %>
	<%
		}
	%>
	<%
		} else if (page_code.equals("sound") || page_code.equals("sound_m")) {
	%>
	&gt; <%=show_str.get("online_video."+lang) %>
	<%
		if (page_code.equals("sound")) {
	%>
	&gt; <%=show_str.get("sound."+lang) %>
	<%
		}
	%>
	<%
		if (page_code.equals("sound_m")) {
	%>
	&gt; <%=show_str.get("sound_m."+lang) %>
	<%
		}
	%>
	<%
		} else if (page_code.equals("double") || page_code.equals("angel")) {
	%>
	&gt; <%=show_str.get("team."+lang) %>
	<%
		if (page_code.equals("double")) {
	%>
	&gt; <%=show_str.get("double."+lang) %>
	<%
		}
	%>
	<%
		if (page_code.equals("angel")) {
	%>
	&gt; <%=show_str.get("angle."+lang) %>
	<%
		}
	%>
	<%
		} else {
	%>
	&gt; <%=show_str.get("about_s."+lang) %>
	<%
		}
	%>
</div>