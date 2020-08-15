<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "login";

	//若Session不為空,跳至會員修改頁
	TableRecord member = (TableRecord) session.getAttribute("member");
	if (member != null) {
		out.println("<script> location='modify.jsp'; </script>");
		return;
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
		if (F.qaccount.value == "" || !isEmail(F.qaccount.value)) {
			alert("<%=AppConfig.getProperty("addDesc1."+lang) %>");
			F.qaccount.focus();
			$("#submit").removeAttr('disabled');
			return false;
		} else if (F.qpwd.value == "" || !validLiteral(F.qpwd.value)) {
			alert("<%=AppConfig.getProperty("addDesc3."+lang) %>");
			F.qpwd.focus();
			$("#submit").removeAttr('disabled');
			return false;
		} else if (F.ind.value == "") {
			alert("<%=AppConfig.getProperty("addDesc6."+lang) %>");
			F.ind.focus();
			$("#submit").removeAttr('disabled');
			return false;
		} else {
			$("#submit").attr('disabled', 'disabled');
			login(F.qaccount.value, F.qpwd.value, F.ind.value);
			return false;
		}
	}
	function login(qaccount, qpwd, ind) {
		var url = "../school/member_update.jsp";
		$.post(url, {
			action : "login",
			qaccount : qaccount,
			qpwd : qpwd,
			ind : ind
		}, function(data) {
			if (data == "account") {
				alert('<%=AppConfig.getProperty("accountError."+lang) %>');
				$("#submit").removeAttr('disabled');
			} else {
				<%if(lang.equals("tw")){%>
				alert('歡迎 ' + data + " 再度光臨！");
				<%}else{%>
				alert('Hello ' + data + "!");
				<%}%>
				
				document.location.href = '../school/issue.jsp';
			}
		});
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

				<div class="member_login_area">

					<div class="mLI_logo">
						<img src="../images/logo.png" alt="<%=AppConfig.getProperty("logoAlt."+lang) %> logo" class="logo_defoault" />
					</div>

					<form name="form_login" id="form_login" method="post" action="member_update.jsp?action=login" onsubmit="return checkform(this);">
						<div class="form_list">
							<div class="fL_tit"><%=AppConfig.getProperty("account."+lang) %>：</div>
							<div class="fL_info">
								<input id="qaccount" name="qaccount" type="text"/>
							</div>
						</div>
						<div class="form_list">
							<div class="fL_tit"><%=AppConfig.getProperty("password."+lang) %>：</div>
							<div class="fL_info">
								<input id="qpwd" name="qpwd" type="password"/>
							</div>
						</div>
						<div class="form_list captcha">
							<div class="fL_tit"><%=AppConfig.getProperty("verificationCode."+lang) %>：</div>
							<div class="fL_info captcha">
								<input name="ind" type="text" />
								<img src="../../comm/image.jsp" name="randImage" id="randImage" />
								<a href="javascript:loadimage();">
									<i class="material-icons">&#xE5D5;</i>
								</a>								
							</div>							
						</div>
						<div class="mLI_btn">
							<input type="submit" value="<%=AppConfig.getProperty("submit."+lang) %>" title="<%=AppConfig.getProperty("submitTitle."+lang) %>"/>
						</div>
					</form>
					<div class="mLI_link">
						<a href="../school/add.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("signUpTitle."+lang) %>"> <%=AppConfig.getProperty("signUpTitle."+lang) %> </a>
						<a href="../school/forget.jsp" title="<%=AppConfig.getProperty("openLink."+lang) %><%=AppConfig.getProperty("forget."+lang) %>"> <%=AppConfig.getProperty("forget."+lang) %> </a>
					</div>
				</div>

			</div>

			<div class="clearfloat"></div>

		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>