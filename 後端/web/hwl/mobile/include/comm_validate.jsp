<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$().ready(function() {
	// validate the comment form when it is submitted
	$("#frm").validate({
		errorPlacement : function(error, element) {	
			if (element.attr('class').indexOf("ind") != -1) {
				error.appendTo(element.parent('div').parent('div').prev('div'));
			} else if (element.attr('type') == "radio") {
				error.appendTo(element.parent('label').parent('div').prev('div'));
			} else if (element.attr('class').indexOf("cu_time_text") != -1) {
				element.after(error);
			} else {
				error.appendTo(element.parent('div').prev('div'));
			}
		}
	});
	
	//code to hide topic selection, disable for demo
	var cu_time = $("input[name=cu_time]");
	// newsletter topics are optional, hide at first
	var inital = cu_time.is(":checked");
	var topics = $("input[name=cu_time_text]")[inital ? "removeClass" : "addClass"]("gray");
	var topicInputs = topics.attr("disabled", !inital);
	// show when newsletter is checked
	cu_time.click(function() {
		topics[(this.value != "其他") ? "removeClass" : "addClass"]("gray");
		topicInputs.attr("disabled", this.value != "其他");
	});
});
jQuery.validator.addMethod("phone", function(value, element) {
	var regexp1 = /09\d{2}-\d{3}-\d{3}/;
	var regexp2 = /0\d{1,3}-\d{2,4}-\d{4}-\d{3,}/;
	var regexp3 = /\+\d{1,3}-\d{1,3}-\d{4}-\d{4}-\d{3,}/;
	var regexp4 = /^[\+]?[\d\(\)\-\#]+$/;

	var result = false;

	if (regexp1.test(value) || regexp2.test(value) || regexp3.test(value)
			|| regexp4.test(value) || !isNaN(value)) {
		result = true;
	} else {
		result = false;
	}
	return result;
}, "<%=lang.equals("tw")?"電話號碼不符合格式":"The phone number does not match the format"%>");
<%if(lang.equals("en")){%>
jQuery.extend(jQuery.validator.messages, {
    required: "This field is required.",
    remote: "Please fix this field.",
    email: "Please enter a valid email address.",
    url: "Please enter a valid URL.",
    date: "Please enter a valid date.",
    dateISO: "Please enter a valid date (ISO).",
    number: "Please enter a valid number.",
    digits: "Please enter only digits.",
    creditcard: "Please enter a valid credit card number.",
    equalTo: "Please enter the same value again.",
    accept: "Please enter a value with a valid extension.",
    maxlength: jQuery.validator.format("Please enter no more than {0} characters."),
    minlength: jQuery.validator.format("Please enter at least {0} characters."),
    rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
    range: jQuery.validator.format("Please enter a value between {0} and {1}."),
    max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
    min: jQuery.validator.format("Please enter a value greater than or equal to {0}.")
});
<%}%>
</script>