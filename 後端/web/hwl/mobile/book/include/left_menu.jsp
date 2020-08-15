<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftListArea">
	<div class="leftList<%=(page_code.equals("braille_s") || page_code.equals("braille_n") || page_code.equals("braille_m"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=AppConfig.getProperty("unfolded."+lang) %><%=AppConfig.getProperty("braille."+lang) %><%=AppConfig.getProperty("menu."+lang) %>"> <%=AppConfig.getProperty("braille."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("braille_s")?" active":""%>">
				<a href="../book/braille_s.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("brailleS."+lang) %>"> <%=AppConfig.getProperty("brailleS."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("braille_n")?" active":""%>">
				<a href="../book/braille_n.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("brailleN."+lang) %>"> <%=AppConfig.getProperty("brailleN."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("braille_m")?" active":""%>">
				<a href="../book/braille_m.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("brailleM."+lang) %>"> <%=AppConfig.getProperty("brailleM."+lang) %> </a>
			</div>			
		</div>
	</div>
	<div class="leftList<%=page_code.equals("magazine")?" active":""%>">
		<a href="../book/magazine.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("magazine."+lang) %>"> <%=AppConfig.getProperty("magazine."+lang) %> </a>
	</div>
	<div class="leftList<%=(page_code.equals("entity") || page_code.equals("digit"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=AppConfig.getProperty("unfolded."+lang) %><%=AppConfig.getProperty("bookTitle."+lang) %><%=AppConfig.getProperty("menu."+lang) %>"> <%=AppConfig.getProperty("bookTitle."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("entity")?" active":""%>">
				<a href="../book/entity.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("entity."+lang) %>"> <%=AppConfig.getProperty("entity."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("digit")?" active":""%>">
				<a href="../book/digit.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("digit."+lang) %>"> <%=AppConfig.getProperty("digit."+lang) %> </a>
			</div>
		</div>
	</div>
	<div class="leftList<%=(page_code.equals("sound") || page_code.equals("sound_m"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=AppConfig.getProperty("unfolded."+lang) %><%=AppConfig.getProperty("soundTitle."+lang) %><%=AppConfig.getProperty("menu."+lang) %>"> <%=AppConfig.getProperty("soundTitle."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("sound")?" active":""%>">
				<a href="../book/sound.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("sound."+lang) %>"> <%=AppConfig.getProperty("sound."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("sound_m")?" active":""%>">
				<a href="../book/sound_m.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("soundM."+lang) %>"> <%=AppConfig.getProperty("soundM."+lang) %> </a>
			</div>
		</div>
	</div>
	<div class="leftList<%=(page_code.equals("double") || page_code.equals("angel"))?" active":""%>">
		<a href="javascript:void(0);" title="<%=AppConfig.getProperty("unfolded."+lang) %><%=AppConfig.getProperty("doubleTitle."+lang) %><%=AppConfig.getProperty("menu."+lang) %>"> <%=AppConfig.getProperty("doubleTitle."+lang) %> </a>
		<div class="leftListOpen">
			<div class="lLO_list<%=page_code.equals("double")?" active":""%>">
				<a href="../book/double.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("double."+lang) %>"> <%=AppConfig.getProperty("double."+lang) %> </a>
			</div>
			<div class="lLO_list<%=page_code.equals("angel")?" active":""%>">
				<a href="../book/angel.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("angel."+lang) %>"> <%=AppConfig.getProperty("angel."+lang) %> </a>
			</div>		
		</div>
	</div>
	<div class="leftList<%=page_code.equals("about_b")?" active":""%>">
		<a href="../book/about_b.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("aboutTitle."+lang) %>"> <%=AppConfig.getProperty("aboutTitle."+lang) %> </a>
	</div>
	<div class="leftList">
		<a href="<%=SiteSetup.getSetup("bookLink1" + "." + lang).getString("ss_text")%>" target="_blank" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("bookLink1."+lang) %>"> <%=AppConfig.getProperty("bookLink1."+lang) %> </a>
	</div>
	<div class="leftList">
		<a href="<%=SiteSetup.getSetup("bookLink2" + "." + lang).getString("ss_text")%>" target="_blank" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("bookLink2."+lang) %>"> <%=AppConfig.getProperty("bookLink2."+lang) %> </a>
	</div>
	<div class="leftList">
		<a href="<%=SiteSetup.getSetup("bookLink3" + "." + lang).getString("ss_text")%>" target="_blank" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("bookLink3."+lang) %>"> <%=AppConfig.getProperty("bookLink3."+lang) %> </a>
	</div>
</div>