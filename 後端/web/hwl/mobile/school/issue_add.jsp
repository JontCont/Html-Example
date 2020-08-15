<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "issue_add";

	//若Session為空,跳至會員新增頁
	TableRecord member = (TableRecord) session.getAttribute("member");
	if (member == null) {
		out.println("<script> location='add.jsp'; </script>");
		return;
	}else{
		if(member.getString("mp_status").equals("N")){
			out.println("<script> location='issue.jsp'; </script>");
			return;
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%@include file="/WEB-INF/jspf/norobots.jspf"%>
<script>
	function checkform(F) {
		if (F.ip_title.value == "") {
			alert("<%=AppConfig.getProperty("issueDesc1."+lang) %>");
			F.ip_title.focus();
			return false;
		} else if (F.ip_content.value == "") {
			alert("<%=AppConfig.getProperty("issueDesc2."+lang) %>");
			F.ip_content.focus();
			return false;
		} else if (F.ind.value == "") {
			alert("<%=AppConfig.getProperty("addDesc6."+lang) %>");
			F.ind.focus();
			return false;
		} else {
			return true;
		}

	}
	function loadimage() {
		document.getElementById("randImage").src = "../../comm/image.jsp?" + Math.random();
	}
</script>
</head>

<body>

	<%--版頭--%>
	<%@include file="../include/top_menu.jsp"%>

	<%--main--%>
	<div class="main">
		<div class="wrap">

			<%--麵包屑--%>
			<%@include file="include/crumb.jsp"%>

			<%--內頁大標--%>
			<%@include file="include/title.jsp"%>

			<%--左--%>
			<div class="left">

				<%--左選單--%>
				<%@include file="include/left_menu.jsp"%>

			</div>

			<%--右--%>
			<div class="right">
				<form name="form_add" id="form_add" method="post" action="issue_update.jsp?action=add" onsubmit="return checkform(this);">
					<div class="member_add_area">
						<div class="maa_tit"><%=AppConfig.getProperty("addTopic."+lang) %></div>
						<div class="maa_list add_tit">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("title."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="ip_title" name="ip_title" type="text">
							</div>
						</div>
						<div class="maa_list add_text">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("content."+lang) %></div>
							</div>
							<div class="mL_info">
								<textarea name="ip_content" id="ip_content"></textarea>
							</div>
						</div>
						<div class="maa_list captcha">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("verificationCode."+lang) %></div>
							</div>
							<div class="mL_info">
								<input name="ind" id="ind" type="text" />
								<img src="../../comm/image.jsp" name="randImage" id="randImage" />
								<a href="javascript:loadimage();">
									<i class="material-icons">&#xE5D5;</i>
								</a>
							</div>
						</div>

						<div class="maa_btn">
							<input type="submit" value="<%=AppConfig.getProperty("submit."+lang) %>" title="<%=AppConfig.getProperty("submitTitle."+lang) %>"/>
						</div>

					</div>
				</form>
			</div>

			<div class="clearfloat"></div>

		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>