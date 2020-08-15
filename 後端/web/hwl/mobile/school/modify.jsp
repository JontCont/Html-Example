<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "modify";

	//若Session為空,跳至會員新增頁
	TableRecord member = (TableRecord) session.getAttribute("member");
	if (member == null) {
		out.println("<script> location='add.jsp'; </script>");
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
		if (F.mp_name.value == "") {
			alert("<%=AppConfig.getProperty("addDesc4."+lang) %>");
			F.mp_name.focus();
			return false;
		} else if (F.mp_nickname.value == "") {
			alert("<%=AppConfig.getProperty("addDesc5."+lang) %>");
			F.mp_nickname.focus();
			return false;
		} else {
			return true;
		}
	}
	function checkform_psd(F) {
		if (F.mp_password.value.length < 6) {
			alert("<%=AppConfig.getProperty("addDesc2."+lang) %>");
			F.mp_password.focus();
			return false;
		} else if (F.mp_password.value == "" || !validLiteral(F.mp_password.value)) {
			alert("<%=AppConfig.getProperty("addDesc3."+lang) %>");
			F.mp_password.focus();
			return false;
		} else if (F.mp_password.value != F.mp_password_again.value) {
			alert("<%=AppConfig.getProperty("addDesc7."+lang) %>");
			F.mp_password_again.focus();
			return false;
		} else {
			return true;
		}
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
				<form name="form_modify" id="form_modify" method="post" action="member_update.jsp?action=modify" onsubmit="return checkform(this);">
					<div class="member_add_area">
						<div class="maa_tit"><%=AppConfig.getProperty("modify."+lang) %></div>
						<div class="maa_list noinput">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("account."+lang) %></div>
							</div>
							<div class="mL_info">
								<%=member.getString("mp_account") %>
							</div>
						</div>						
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("name."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_name" name="mp_name" type="text" value="<%=member.getString("mp_name") %>"/>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("nickname."+lang) %></div>
								<div class="mta_required"><%=AppConfig.getProperty("required."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_nickname" name="mp_nickname" type="text" value="<%=member.getString("mp_nickname") %>"/>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("gender."+lang) %></div>
							</div>
							<div class="mL_info">
								<label for="male">
									<input id="male" name="mp_gender" type="radio" value="M" <%=member.getString("mp_gender").equals("M")?"checked":"" %>/>
									<%=AppConfig.getProperty("male."+lang) %>
								</label>
								<label for="female">
									<input id="female" name="mp_gender" type="radio" value="F" <%=member.getString("mp_gender").equals("F")?"checked":"" %>/>
									<%=AppConfig.getProperty("female."+lang) %>
								</label>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("birthday."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_birthday" name="mp_birthday" placeholder="<%=AppConfig.getProperty("birthdayText."+lang) %>" type="text" maxlength="10" value="<%=member.getString("mp_birthday") %>"/>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("phone."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_phone" name="mp_phone" type="text" value="<%=member.getString("mp_phone") %>"/>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("cellphone."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_cellphone" name="mp_cellphone" type="text" value="<%=member.getString("mp_cellphone") %>"/>
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
									<option value="<%=dm.getString("dm_id")%>" <%=member.getString("mp_education").equals(dm.getString("dm_id"))?"selected":"" %>><%=dm.getString("dm_title")%></option>
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
								<input type="hidden" name="county" value="<%=member.getString("mp_county") %>" />
								<input type="hidden" name="city" value="<%=member.getString("mp_city") %>" />
								<!-- <span>縣市</span> -->
								<select name="mp_county" id="mp_county" onchange="changeZone(form_modify.mp_county, form_modify.mp_city, form_modify.mp_zipcode, form_modify.county, form_modify.city)"></select>
								<!-- <span>鄉鎮市區</span> -->
								<select name="mp_city" id="mp_city" onchange="showZipCode(form_modify.mp_county, form_modify.mp_city, form_modify.mp_zipcode, form_modify.county, form_modify.city)"></select>
								<!-- <span>郵遞區號</span> -->
								<input type="text" name="mp_zipcode" id="mp_zipcode" class="zip_code" readonly />
								<%} %>								
								<input id="mp_address" name="mp_address" type="text" value="<%=member.getString("mp_address") %>"/>								
							</div>
						</div>

						<div class="maa_btn">
							<input type="submit" value="<%=AppConfig.getProperty("submit."+lang) %>" title="<%=AppConfig.getProperty("submitTitle."+lang) %>"/>
						</div>

					</div>
				</form>
				<form name="form_password" id="form_password" method="post" action="member_update.jsp?action=modify" onsubmit="return checkform_psd(this);">
					<div class="member_add_area">
						<div class="maa_tit"><%=AppConfig.getProperty("changePassword."+lang) %></div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("newPassword."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_password" name="mp_password" type="password" />
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("checkNewPassword."+lang) %></div>
							</div>
							<div class="mL_info">
								<input id="mp_password_again" name="mp_password_again" type="password" />
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
	ResetAll(form_modify.mp_county, form_modify.mp_city, form_modify.mp_zipcode, form_modify.county, form_modify.city);
</script>
<%} %>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>