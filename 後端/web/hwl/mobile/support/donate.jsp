<%@page import="com.genesis.payment.Payment"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "project";

	String os_no = IDTool.getUID("AB");
	for (;;) {
		Vector checks = app_sm.selectAll(tblos, "os_no=?", new Object[]{os_no});
		if (checks.size() == 0)
			break;
	}
	session.setAttribute("os_no", os_no);

	//取得資料
	cp_no = app_sm.select(tblcp, "cp_code=? and cp_lang=?", new Object[]{"agree", lang});

	//取得使用者選擇專案
	no = StringTool.validString(request.getParameter("no"));
	TableRecord project = app_sm.select(tbldp, no);
	
	
	if (project.getString("dp_id").equals("")) {
		if (lang.equals("tw")) {
			out.write("<script>alert('抱歉，此功能正在維護中，請稍候在試！'); location='../support/project.jsp'; </script>");
		} else {
			out.write(
					"<script>alert('Sorry, This feature is not available right now. Please try again later!'); location='../support/project.jsp'; </script>");
		}
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
<%-- 追蹤碼 --%><%=SiteSetup.getText("seo.track." + lang)%><%-- 追蹤碼 --%>
<%
	if (lang.equals("tw")) {
%>
<script src="<%=request.getContextPath()%>/js/zip.js"></script>
<style>
.address .mL_info select {
	width: auto;
}
.address2 .mL_info select {
	width: auto;
}
	#os_order_zipcode {
		width: 90px;
	}
	#os_order_address {
		margin-top: 13px;
	}
	#os_zipcode2 {
		width: 90px;
	}
	#os_address {
		margin-top: 13px;
	}
</style>
<%
	}
%>
<!-- Event snippet for 專案捐款頁 conversion page
In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button. -->
<script>
function gtag_report_conversion(url) {
  var callback = function () {
    if (typeof(url) != 'undefined') {
      window.location = url;
    }
  };
  gtag('event', 'conversion', {
      'send_to': 'AW-870940443/HyRHCLPA_HoQm_6lnwM',
      'transaction_id': '',
      'event_callback': callback
  });
  return false;
}
</script>
<script type="text/javascript">
function checkform(F) {
	var isEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;  // 使用 isEmail.test(欄位名稱) 檢查 E-Mail 是否格式正確 , 正確為 true
	var num_chk = /^\d+$/;//驗證數字
	if (F.os_order_name.value == "") {
        alert("<%=AppConfig.getProperty("donateCheck1." + lang)%>");
        F.os_order_name.focus();
	} else if (F.os_order_pid.value == "" && F.os_declare.value=="Y") {
        alert("<%=AppConfig.getProperty("donateCheck2." + lang)%>");
        F.os_order_pid.focus();
	} else if (F.os_order_cellphone.value == "" || !num_chk.test(F.os_order_cellphone.value)) {
        alert("<%=AppConfig.getProperty("donateCheck3." + lang)%>");
        F.os_order_cellphone.focus();
	} else if (F.os_newsletter.value == "Y" && (F.os_order_email.value == "" || !isEmail.test(F.os_order_email.value))) {
	    alert("<%=AppConfig.getProperty("donateCheck4." + lang)%>");
	    F.os_order_email.focus();
	} else if (F.os_total.value == "" || !num_chk.test(F.os_total.value) || parseInt(F.os_total.value)<100  ) {
		alert("<%=title_str.get("amount." + lang)%>");
		//alert("<%=AppConfig.getProperty("donateCheck5." + lang)%>");
        F.os_total.focus();
    } else if ($("input[name='os_paymethod']:checked").val() == null) {
	    alert("<%=AppConfig.getProperty("donateCheck6." + lang)%>");
	    F.os_paymethod.focus();
    } else if (F.os_receipt.value != "1" && F.os_name.value == "") {
	    alert("<%=AppConfig.getProperty("donateCheck7." + lang)%>");
	    F.os_name.focus();
    } else if (F.os_receipt.value != "1" && F.os_county.value == "") {
	    alert("<%=AppConfig.getProperty("donateCheck8." + lang)%>");
	    F.os_county.focus();
    } else if (F.os_receipt.value != "1" && F.os_city.value == "") {
	    alert("<%=AppConfig.getProperty("donateCheck8." + lang)%>");
	    F.os_city.focus();
    } else if (F.os_receipt.value != "1" && F.os_address.value == "") {
	    alert("<%=AppConfig.getProperty("donateCheck8." + lang)%>");
	    F.os_address.focus();
    } else if (F.ind.value == "") {
		alert("<%=AppConfig.getProperty("addDesc6." + lang)%>");
	    F.ind.focus();
    } else {    
    	gtag_report_conversion("<%=request.getRequestURL()+(request.getQueryString()!=null && !request.getQueryString().isEmpty()?"?"+request.getQueryString():"")%>");
        return true;
    }
    return false;
}

function loadimage() {
	document.getElementById("randImage").src = "../../comm/image.jsp?" + Math.random();
}
$(document).ready(function() {	
	$('#same_name').click(function() {
		if($('#same_name').is(":checked")){
			$('#os_name').val($('#os_order_name').val());
			//$('#same_name').val("Y")
		}else{
			$('#os_name').val("");
			//$('#same_name').val("")
		}
	});

	$('#same_address').click(function() {
		if($('#same_address').attr('checked')){
			$('#os_county2').val($('#os_order_county').val());
			changeZone(form_add.os_county2, form_add.os_city2, form_add.os_zipcode2, form_add.county2, form_add.city2);
			$('#os_city2').val($('#os_order_city').val());
			$('#os_zipcode2').val($('#os_order_zipcode').val());
			$('#os_address').val($('#os_order_address').val());
			$('#same_address').val("Y")
		}else{
			$('#os_county2').val("");
			changeZone(form_add.os_county2, form_add.os_city2, form_add.os_zipcode2, form_add.county2, form_add.city2);
			$('#os_city2').val("");
			$('#os_zipcode2').val("");
			$('#os_address').val("");
			$('#same_address').val("")
		}
	});
	
	$("#maa_btn").hide();
	$('.iAgree').click(function() {
		if($('.iAgree').attr('checked')){
			$("#maa_btn").show();
		}else{
			$("#maa_btn").hide();
		}
	});
	
	<%-- 愛心禮品計算 start--%>
	<%
	//取得專案附贈禮品
	TableRecord dp = app_sm.select(tbldp, no);
	String[] gifts=dp.getString("dp_gift").split(",");
	Vector<TableRecord> giftlist=new Vector();
	for(int i=0;i<gifts.length;i++){
		TableRecord gift=app_sm.select(tblgc, gifts[i]);
		if(!gift.getString("gc_id").isEmpty()){
			giftlist.add(gift);
		}
	}
	%>
	$("input[name='os_total']").change(function(){
		<%-- 計算可換取幾個禮品--%>
        var gift_count=0;
		$(".gift_label").remove();
		<%
		for(int i=0;i<giftlist.size();i++){
			int gift_price=giftlist.get(i).getInt("gc_price");
			String gift_title=giftlist.get(i).getString("gc_title");
			String gift_unit=giftlist.get(i).getString("gc_unit");
			String gift_id=giftlist.get(i).getString("gc_id");
		
		%>
		<%-- 禮品等價金額與捐款金額 --%>
		var gift_price=<%=gift_price%>;
		var donate_price=$(this).val();
		<%-- 計算捐款金額可換多少個禮品 --%>
		var count=Math.floor(donate_price/gift_price);
		<%-- 捐款金額已足夠可換1個以上禮品 --%>
		if(count>0 && gift_price>0){
			var value="<%=gift_title%>"+count+"<%=gift_unit%>";
			var gift_html="<label style=\"display:block\" class='gift_label' id='gift<%=i%>'><input type='radio' id='<%=gift_id%>' name='os_gift' value=''/> "+value+"</label>"
			$("#gift_info").append(gift_html);
			$("#<%=gift_id%>").attr("value","<%=gift_id%>;"+count);
			gift_count++;
		}else if(gift_price==0){
			var value="<%=gift_title%><%=!gift_unit.isEmpty()?"1"+gift_unit:""%>";
			var gift_html="<label style=\"display:block\" class='gift_label' id='gift<%=i%>'><input type='radio' id='<%=gift_id%>' name='os_gift' value=''/> "+value+"</label>"
			$("#gift_info").append(gift_html);
			$("#<%=gift_id%>").attr("value","<%=gift_id%><%=!gift_unit.isEmpty()?";1":""%>");
			gift_count++;
		}
		<% } %>
		
		<%-- 沒有任何可換取領品=沒有class gift_label的區塊 --%>
		if($(".gift_label").length==0 && gift_count==0){
			var nogift_html="<label class='gift_label'><input type='radio' name='os_gift' value='無'/ checked> <%=show_str.get("nogift."+lang) %></label>"	
			$("#gift_info").append(nogift_html);
		}
		
	});
	<%-- 愛心禮品計算 end--%>
});

</script>

</head>

<body>

	<%--版頭--%>
	<%@include file="../include/top_menu02.jsp"%>

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
				<form name="form_add" action="donate_update.jsp?no=<%=project.getString("dp_id")%>" method="post" onsubmit="return checkform(this);">
					<div class="member_add_area">
						<div class="maa_tit"><%=AppConfig.getProperty("personal." + lang)%></div>
						<div class="maa_list noinput">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("donateNo." + lang)%></div>
								<input name="os_no" type="hidden" value="<%=os_no%>"></input>
							</div>
							<div class="mL_info"><%=os_no%></div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("name." + lang)%></div>
								<div class="mta_required"><%=AppConfig.getProperty("required." + lang)%></div>
							</div>
							<div class="mL_info">
								<input id="os_order_name" name="os_order_name" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("gender." + lang)%></div>
							</div>
							<div class="mL_info">
								<label for="male">
									<input id="male" name="os_order_gender" type="radio" value="M">
										<%=AppConfig.getProperty("male." + lang)%>
								</label>
								<label for="female">
									<input id="female" name="os_order_gender" type="radio" value="F">
										<%=AppConfig.getProperty("female." + lang)%>
								</label>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("IDNo." + lang)%></div>
							</div>
							<div class="mL_info">
								<input type="text" placeholder="<%=AppConfig.getProperty("foreigners." + lang)%>" name="os_order_pid" maxlength="10" />
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("birthday." + lang)%></div>
							</div>
							<div class="mL_info">
								<input id="os_birthday" name="os_order_birthday" placeholder="<%=AppConfig.getProperty("birthdayText." + lang)%>" type="text" maxlength="10">
							</div>
						</div>
						<div class="maa_list tworow">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("provide." + lang)%></div>
							</div>
							<div class="mL_info">
								<label for="declare1">
									<input type="radio" name="os_declare" value="Y" id="declare1" />
									<%=AppConfig.getProperty("yes." + lang)%>
								</label>
								<label for="declare2">
									<input type="radio" name="os_declare" value="N" id="declare2" />
									<%=AppConfig.getProperty("no." + lang)%>
								</label>
								<br />
								<%=AppConfig.getProperty("provideDesc." + lang)%>
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("cellphone." + lang)%></div>
								<div class="mta_required"><%=AppConfig.getProperty("required." + lang)%></div>
							</div>
							<div class="mL_info">
								<input id="os_cellphone" name="os_order_cellphone" type="text">
							</div>
						</div>
						<div class="maa_list">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("phone." + lang)%></div>
							</div>
							<div class="mL_info">
								<input id="os_phone" name="os_order_phone" type="text">
							</div>
						</div>
						<div class="maa_list address">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("address." + lang)%></div>
							</div>
							<div class="mL_info">
								<%
									if (lang.equals("tw")) {
								%>
								<input type="hidden" name="county" value="" />
								<input type="hidden" name="city" value="" />
								<!-- <span>縣市</span> -->
								<select name="os_order_county" id="os_order_county" onchange="changeZone(form_add.os_order_county, form_add.os_order_city, form_add.os_order_zipcode, form_add.county, form_add.city)"></select>
								<!-- <span>鄉鎮市區</span> -->
								<select name="os_order_city" id="os_order_city" onchange="showZipCode(form_add.os_order_county, form_add.os_order_city, form_add.os_order_zipcode, form_add.county, form_add.city)"></select>
								<!-- <span>郵遞區號</span> -->
								<input type="text" name="os_order_zipcode" id="os_order_zipcode" class="zip_code" readonly />
								<%
									}
								%>
								<input id="os_order_address" name="os_order_address" type="text" />
							</div>
						</div>
						<div class="maa_list education">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("education." + lang)%></div>
							</div>
							<div class="mL_info">
								<select name="os_order_education">
									<option value=""><%=AppConfig.getProperty("select." + lang)%></option>
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
						<div class="maa_list education">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("class." + lang)%></div>
							</div>
							<div class="mL_info">
								<select name="os_order_class">
									<option value=""><%=AppConfig.getProperty("select." + lang)%></option>
									<%
										dms = app_sm.selectAll(tbldm, "dm_code=? and dm_lang=? and dm_display=?",
												new Object[]{"class_category", lang, "Y"}, "dm_showseq ASC,dm_createdate DESC");
										for (TableRecord dm : dms) {
									%>
									<option value="<%=dm.getString("dm_id")%>"><%=dm.getString("dm_title")%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit">E-mail</div>
							</div>
							<div class="mL_info">
								<input type="text" name="os_order_email" />
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("proceedings." + lang)%></div>
							</div>
							<div class="mL_info">
								<label for="proceedings1">
									<input type="radio" name="os_proceedings" value="Y" id="proceedings1" />
									<%=AppConfig.getProperty("newsletterDesc." + lang)%>
								</label>
								<label for="proceedings2">
									<input type="radio" name="os_proceedings" value="N" id="proceedings2" />
									<%=AppConfig.getProperty("proceedingsDesc." + lang)%>
								</label>
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("newsletter." + lang)%></div>
							</div>
							<div class="mL_info">
								<label for="newsletter1">
									<input type="radio" name="os_newsletter" value="Y" id="newsletter1" />
									<%=AppConfig.getProperty("yes." + lang)%>
								</label>
								<label for="newsletter2">
									<input type="radio" name="os_newsletter" value="N" id="newsletter2" />
									<%=AppConfig.getProperty("no." + lang)%>
								</label>
							</div>
						</div>

						</br>
						</br>

						<div class="maa_tit"><%=AppConfig.getProperty("donateInfo." + lang)%></div>

						<div class="maa_list single helf">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("receiptTitle." + lang)%></div>
							</div>
							<div class="mL_info">
								<input type="text" placeholder="<%=AppConfig.getProperty("receiptDesc1." + lang)%>" name="os_name" id="os_name" />
							</div>
						</div>
						<div class="maa_list single helf">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("amount." + lang)%></div>
								&nbsp;
								<div class="mta_required"><%=AppConfig.getProperty("required." + lang)%></div>
							</div>
							<div class="mL_info">
								<input type="text" name="os_total" maxlength="11" />
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("payment." + lang)%></div>
								<div class="mta_required"><%=AppConfig.getProperty("required." + lang)%></div>
							</div>
							<div class="mL_info">
								<%
									Vector<TableRecord> pps = Payment.getPayments(lang);
									for (TableRecord pp : pps) {
								%>
								<label for"<%=pp.getString("pp_id")%>">
									<input type="radio" name="os_paymethod" value="<%=pp.getString("pp_id")%>" id="<%=pp.getString("pp_id")%>"/>
									<% if(pp.getString("pp_id").equals("PP1548830298953")){ // Line Pay %>
									<img src="../images/LINEPay_PC.png" style="vertical-align: middle;width: 300px;">
									<% }else{ %>
									<%=pp.getString("pp_title")%>
									<% } %>
								</label>
								&nbsp;							
								<%
									}
								%>
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("frequency." + lang)%></div>
							</div>
							<div class="mL_info">
								<label>
									<input type="radio" name="os_frequency" value="1" />
									<%=AppConfig.getProperty("donationFrequencyDesc1." + lang)%>
								</label>
								&nbsp;
								<label>
									<input type="radio" name="os_frequency" value="2" />
									<%=AppConfig.getProperty("donationFrequencyDesc2." + lang)%>
								</label>
								<label>
									<input type="radio" name="os_frequency" value="3" />
									<%if(lang.equals("tw")){ %>
									<%=AppConfig.getProperty("donationFrequencyDesc3." + lang).substring(0, AppConfig.getProperty("donationFrequencyDesc3." + lang).indexOf("MM"))%><input type="text" name="os_month" value=""  style="width: 2em;height: 2em;"/><%=AppConfig.getProperty("donationFrequencyDesc3." + lang).substring(AppConfig.getProperty("donationFrequencyDesc3." + lang).indexOf("MM")+2)%>
									<%}else{ %>
									<%=AppConfig.getProperty("donationFrequencyDesc3." + lang)%><input type="text" name="os_month" value="" style="width: 2em;height: 2em;"/>
									<%} %>
								</label>
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("donationReceipt." + lang)%></div>
							</div>
							<div class="mL_info">
								<label>
									<input type="radio" name="os_receipt" value="1" />
									<%=AppConfig.getProperty("donationReceiptDesc1." + lang)%>
								</label>
								&nbsp;
								<label>
									<input type="radio" name="os_receipt" checked="checked" value="2" />
									<%=AppConfig.getProperty("donationReceiptDesc2." + lang)%>
								</label>
								<label>
									<input type="radio" name="os_receipt" value="3" />
									<%=AppConfig.getProperty("donationReceiptDesc3." + lang)%>
								</label>
							</div>
						</div>
						<div class="maa_list address2">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("donationAddress." + lang)%></div>
							</div>
							<div class="mL_info">
								<%
									if (lang.equals("tw")) {
								%>
								<input type="hidden" name="county2" value="" />
								<input type="hidden" name="city2" value="" />
								<!-- <span>縣市</span> -->
								<select name="os_county" id="os_county2" onchange="changeZone(form_add.os_county2, form_add.os_city2, form_add.os_zipcode2, form_add.county2, form_add.city2)"></select>
								<!-- <span>鄉鎮市區</span> -->
								<select name="os_city" id="os_city2" onchange="showZipCode(form_add.os_county2, form_add.os_city2, form_add.os_zipcode2, form_add.county2, form_add.city2)"></select>
								<!-- <span>郵遞區號</span> -->
								<input type="text" name="os_zipcode" id="os_zipcode2" class="zip_code" readonly />
								<%
									}
								%>
								<input id="os_address" name="os_address" type="text" />
							</div>
						</div>
						<div class="maa_list single">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("gift." + lang)%></div>
							</div>
							<div class="mL_info" id="gift_info">
								<label class="gift_label">
									<input type="radio" name="os_gift" value="無" checked />
									<%=show_str.get("donate_entergift."+lang) %>
								</label>
								<%--
								<%
									dms = app_sm.selectAll(tbldm, "dm_code=? and dm_lang=? and dm_display=?",
											new Object[]{"gift_category", lang, "Y"}, "dm_showseq ASC,dm_createdate DESC");
									for (TableRecord dm : dms) {
								%>
								<label for="<%=dm.getString("dm_id")%>">
									<input type="radio" name="os_gift" value="<%=dm.getString("dm_id")%>" id="<%=dm.getString("dm_id")%>" />
									<%=dm.getString("dm_title")%>
								</label>
								<%
									}
								%>
								--%>
							</div>
						</div>
						<div class="maa_list add_text">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("remark." + lang)%></div>
							</div>
							<div class="mL_info">
								<textarea name="os_remark"></textarea>
							</div>
						</div>
						<div class="maa_list captcha">
							<div class="mL_tit_area">
								<div class="mta_tit"><%=AppConfig.getProperty("verificationCode." + lang)%></div>
								<div class="mta_required"><%=AppConfig.getProperty("required." + lang)%></div>
							</div>
							<div class="mL_info">
								<input name="ind" id="ind" type="text" />
								<img src="../../comm/image.jsp" name="randImage" id="randImage" />
								<a href="javascript:loadimage();">
									<i class="material-icons">&#xE5D5;</i>
								</a>
							</div>
						</div>
					</div>

					<!--聲明區-->
					<div class="statement_area">
						<div class="statement_text">
							<div class="statement_tit"><%=cp_no.getString("cp_title")%></div>
							<div class="statement_text"><%=cp_no.getString("cp_content")%></div>
						</div>
					</div>

					<!--我同意-->
					<div class="agree_area">
						<label>
							<input type="checkbox" class="iAgree" />
							<%=AppConfig.getProperty("agreeCheck." + lang)%>
						</label>
					</div>

					<!--按鍵區-->
					<div class="maa_btn" id="maa_btn">
						<input type="button" onclick="javascript:history.back();" value="<%=AppConfig.getProperty("back." + lang)%>" title="<%=AppConfig.getProperty("backTitle." + lang)%>" />
						<input type="submit" value="<%=AppConfig.getProperty("submit." + lang)%>" title="<%=AppConfig.getProperty("submitTitle." + lang)%>" />
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
<%
	if (lang.equals("tw")) {
%>
<script>
	ResetAll(form_add.os_order_county, form_add.os_order_city, form_add.os_order_zipcode, form_add.county, form_add.city);
	ResetAll(form_add.os_county2, form_add.os_city2, form_add.os_zipcode2, form_add.county2, form_add.city2);
</script>
<%
	}
%>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>