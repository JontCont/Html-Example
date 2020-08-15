<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.security.*" %>
<%@page import="com.genesis.payment.Payment"%>
<% 
	String os_id = StringTool.validString(request.getParameter("os_id"));
	TableRecord os = app_sm.select(tblos,os_id);

	String merID = Payment.getValue("merID");
	String MerchantID = Payment.getValue("MerchantID");
	String TerminalID = Payment.getValue("TerminalID");	
	String MerchantName = AppConfig.getProperty("logoAlt." + lang);
	String customize = "0";
	String lidm = os.getString("os_id");	
	String purchAmt = os.getInt("os_total") + "";
	String AuthResURL = "";
	String[] names = {"merID","MerchantID","TerminalID","MerchantName","customize","lidm","purchAmt","AuthResURL"};
	String[] values = {merID,MerchantID,TerminalID,MerchantName,customize,lidm,purchAmt,AuthResURL};
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@include file="/WEB-INF/jspf/norobots.jspf"%>
<title></title>
</head>
<body >
<form name="frmMain" method="post" action="<%=Payment.getValue("url")%>">
	<%=HtmlCoder.hiddenInputs(names,values) %>
</FORM>
<script type="text/javascript">
	document.frmMain.submit();
</script>
</body>
</html>
<%
//關閉連線池
app_sm.close();
%>