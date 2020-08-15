<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

// 總到訪人數 預設值
String[] titles		= {"PC版網站瀏覽總人數","手機版網站瀏覽總人數"};
String[] keywords	= {"webpc_visit","webmobile_visit"};
for(int i=0;i<titles.length;i++){
	TableRecord ss = SiteSetup.getSetup(keywords[i]);
	if (ss.getString("ss_id").equals("")) {
	     ss = new TableRecord(tblss);
	     ss.setInsert("Webuser");
	     ss.setValue("ss_title", titles[i]);
	     ss.setValue("ss_value", "0");
	     ss.setValue("ss_keyword", keywords[i]);
	     app_sm.insert(ss);
	 }
}

// 計算總到訪人數
TableRecord web_visit = SiteSetup.getSetup("webmobile_visit");
try{
	web_visit.setUpdate("WebUser");
	web_visit.setValue("ss_value", String.valueOf( Integer.parseInt(web_visit.getString("ss_value"))+1 ));
}catch (Exception e){
	//System.out.println("Error info:[" + e + "]File name edit.jsp for [" + page_code + "]Time:[" + DateTimeTool.dateTimeString() + "]");
	//out.println("<script> alert('系統發生異常，請聯絡管理者 !!'); history.back(); </script>");
	web_visit.setUpdate("webvisit_forex");
	web_visit.setValue("ss_value",1);
}finally{
	app_sm.update(web_visit);
	app_sm.close();
}

%>
<div class="footer">

	<div class="footerBg">
		<div class="wrap">

			<!--版本切換-->
			<div class="versionChange">
				<a href="../../web/index/index.jsp" title="<%=AppConfig.getProperty("switch."+lang) %><%=AppConfig.getProperty("pc."+lang) %>">
					<img src="../images/icon_pc.png" width="20" height="17" alt="<%=AppConfig.getProperty("pc."+lang) %>icon" />
					<%=AppConfig.getProperty("pc."+lang) %>
				</a>
				<a target="_blank" href="<%=SiteSetup.getSetup("cp.fb1" + "." + lang).getString("ss_text")%>" title="<%=AppConfig.getProperty("openLink."+lang) %><%=show_str.get("foundation."+lang) %>">
					<img src="../images/icon_fb.png" width="33" height="25" alt="<%=show_str.get("foundation."+lang) %> logo" />
					<span> <%=show_str.get("foundation."+lang) %> </span>
				</a>
			</div>

			<!--公司資訊-->
			<div class="companyInfo">
				<div><%=show_str.get("phone."+lang) %>：<%=SiteSetup.getSetup("cp.phone" + "." + lang).getString("ss_text")%></div>
				<div><%=show_str.get("fax."+lang) %>：<%=SiteSetup.getSetup("cp.fax" + "." + lang).getString("ss_text")%></div>
				<div><%=show_str.get("address."+lang) %>：<%=SiteSetup.getSetup("cp.address" + "." + lang).getString("ss_text")%></div>
				<div><%=AppConfig.getProperty("donateAccount."+lang) %>：<%=SiteSetup.getSetup("cp.account1" + "." + lang).getString("ss_text")%></div>
				<div><%=AppConfig.getProperty("donateAccount."+lang) %>：<%=SiteSetup.getSetup("cp.account2" + "." + lang).getString("ss_text")%></div>

				<div>
			        <% if (!SiteSetup.getSetup("cp.email" + "." + lang).getString("ss_text").isEmpty()){  %>
					Email :
					<a href="mailto:<%=SiteSetup.getSetup("cp.email" + "." + lang).getString("ss_text")%>"><%=SiteSetup.getSetup("cp.email" + "." + lang).getString("ss_text")%></a>
				    <% } %>
				</div>
				
				<div>
					Copyright © <%=DateTimeTool.getYear() %>
					<a href="http://www.doweb.com.tw/" title="">Greatest Idea Strategy Co.,Ltd</a>
					All rights reserved.
				</div>
				<%--
				<div>
					<%=show_str.get("web_visit."+lang) %> : <%=SiteSetup.getValue("webmobile_visit") %> 
				</div>
				 --%>
			</div>
			

			<div class="clearfloat"></div>

		</div>
	</div>

</div>

<!--漣漪效果 第二塊 start-->
<script type="text/javascript">
	$.material.init();
</script>
<!--漣漪效果 第二塊 end-->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.4/SmoothScroll.min.js"></script>