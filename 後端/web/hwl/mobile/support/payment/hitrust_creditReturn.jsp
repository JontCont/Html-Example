<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>

<%

	//網際威信信用卡-交易結果導向處理程式
	String 	page_code 		= "hitrust_creditReturn";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	
	
	/*------------------------------------接收網際威信回傳的銀行交易結果參數 ----------------------------------------------------*/
	 
	// 交易結果參數
	String retcode 			= StringTool.validString(request.getParameter("retcode"));      // 交易結果  00為交易成功 其餘失敗錯誤
	String ordernumber 		= StringTool.validString(request.getParameter("ordernumber"));  // 訂單號碼(捐款單號碼)
	String amount 			= StringTool.validString(request.getParameter("amount"));       // 交易金額
	
	/*-----------------------------------------------交易結果確認---------------------------------------------*/
	
	// 訊息回應碼確認 確保交易成功
	boolean check_response	= false;
	if(retcode.equals("00")){
		check_response	= true ; // 刷卡成功
	}
	
	// 訂單資料確認 確認處理程式(hitrust_creditUpdate)已檢核處理為已收款
	boolean check_order		= false;
	TableRecord os = app_sm.select(tblos,"os_no=?",new Object[]{ordernumber}); 	// 取出訂單資料
	if(String.valueOf(os.getInt("os_total")*100).equals(amount)){ // 交易金額正確
		check_order	 = true; // 訂單正確
	}
	
	
	
	// 交易結果提示訊息與導向
	if(check_order && check_response){ // 交易成功 且已正確收款
		out.println("<script> alert('信用卡捐款成功'); location='../project.jsp'; </script>");
	}else{ 
		out.println("<script> alert('信用卡捐款失敗'); location='../project.jsp';</script>"); 
		return;
	}
	


%>


