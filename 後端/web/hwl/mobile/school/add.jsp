<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "add";

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
<%if(lang.equals("tw")){ %>
<script src="<%=request.getContextPath()%>/js/zip.js"></script>
<style>
.address .mL_info select {
	width: auto;
}
	#mp_zipcode {
		width: 90px;
	}
	#mp_address {
		margin-top: 13px;
	}
</style>
<%} %>
<script>
	function checkform(F) {
		if (F.mp_account.value == "" || !isEmail(F.mp_account.value)) {
			alert("<%=AppConfig.getProperty("addDesc1."+lang) %>");
			F.mp_account.focus();
			return false;
		} else if (F.mp_password.value.length < 6) {
			alert("<%=AppConfig.getProperty("addDesc2."+lang) %>");
			F.mp_password.focus();
			return false;
		} else if (F.mp_password.value == "" || !validLiteral(F.mp_password.value)) {
			alert("<%=AppConfig.getProperty("addDesc3."+lang) %>");
			F.mp_password.focus();
			return false;
		} else if (F.mp_name.value == "") {
			alert("<%=AppConfig.getProperty("addDesc4."+lang) %>");
			F.mp_name.focus();
			return false;
		} else if (F.mp_nickname.value == "") {
			alert("<%=AppConfig.getProperty("addDesc5."+lang) %>");
			F.mp_nickname.focus();
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
				<form name="form_add" id="form_add" method="post" action="member_update.jsp?action=add" onsubmit="return checkform(this);">
					<div class="member_add_area">
						<div class="maa_tit"><%=AppConfig.getProperty("personal."+lang) %></div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("account."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_account" name="mp_account" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("password."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_password" name="mp_password" type="password">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("name."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_name" name="mp_name" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("nickname."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_nickname" name="mp_nickname" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("gender."+lang) %></div>
							</div>
							<div class="mL_info">
								<label for="male">
									<input id="male" name="mp_gender" type="radio" value="M">
									<%=AppConfig.getProperty("male."+lang) %>
								</label>
								<label for="female">
									<input id="female" name="mp_gender" type="radio" value="F">
									<%=AppConfig.getProperty("female."+lang) %>
								</label>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("birthday."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_birthday" name="mp_birthday" placeholder="<%=AppConfig.getProperty("birthdayText."+lang) %>" type="text" maxlength="10">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("phone."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_phone" name="mp_phone" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("cellphone."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_cellphone" name="mp_cellphone" type="text">
							</div>
						</div>
						<div class="maa_list education">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("education."+lang) %></div>
							</div>
							<div class="mL_info">
								<select name="mp_education">
									<option value=""><%=AppConfig.getProperty("select."+lang) %></option>
									<%
										Vector<TableRecord> dms = app_sm.selectAll(tbldm, "dm_code=? and dm_lang=? and dm_display=?",
												new Object[]{"education_category", lang, "Y"}, "dm_showseq ASC,dm_createdate DESC");
										for (TableRecord dm : dms) {
									%>
									<option value="<%=dm.getString("dm_id")%>"><%=dm.getString("dm_title")%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
						<div class="maa_list address">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("address."+lang) %></div>
							</div>
							<div class="mL_info">
								<%if(lang.equals("tw")){ %>
								<input type="hidden" name="county" value="" />
								<input type="hidden" name="city" value="" />
								<!-- <span>縣市</span> -->
								<select name="mp_county" id="mp_county" onchange="changeZone(form_add.mp_county, form_add.mp_city, form_add.mp_zipcode, form_add.county, form_add.city)"></select>
								<!-- <span>鄉鎮市區</span> -->
								<select name="mp_city" id="mp_city" onchange="showZipCode(form_add.mp_county, form_add.mp_city, form_add.mp_zipcode, form_add.county, form_add.city)"></select>
								<!-- <span>郵遞區號</span> -->
								<input type="text" name="mp_zipcode" id="mp_zipcode" class="zip_code" readonly />
								<%} %>								
								<input id="mp_address" name="mp_address" type="text" />								
							</div>
						</div>
						<div class="maa_list captcha">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("verificationCode."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
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
<%if(lang.equals("tw")){ %>
<script>
	ResetAll(form_add.mp_county, form_add.mp_city, form_add.mp_zipcode, form_add.county, form_add.city);
</script>
<%} %>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>