<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>

<%

	//網際威信信用卡-交易結果回傳處理程式
	String 	page_code 		= "hitrust_creditReturn";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	
	
	/*------------------------------------接收網際威信回傳的銀行交易結果參數 ----------------------------------------------------*/
	 
	// 交易結果參數
	String retcode 			= StringTool.validString(request.getParameter("retcode"));      // 交易結果  00為交易成功 其餘失敗錯誤
	String ordernumber 		= StringTool.validString(request.getParameter("ordernumber"));  // 訂單號碼(捐款單號碼)
	String orderdate		= StringTool.validString(request.getParameter("orderdate")); 	// 訂單日期
	String approveamount	= StringTool.validString(request.getParameter("approveamount"));// 核准金額(交易金額)
	
	/*-----------------------------------------------交易結果處理---------------------------------------------*/
	
	// 訊息回應碼確認 確保交易成功
	boolean check_response	= false;
	if(retcode.equals("00")){
		check_response	= true ; // 刷卡成功
	}
	
	// 訂單資料確認 確保訂單未遭竄改
	boolean check_order		= false;
	TableRecord os = app_sm.select(tblos,"os_no=?",new Object[]{ordernumber}); 	// 取出訂單資料
	if(String.valueOf(os.getInt("os_total")*100).equals(approveamount)){ // 交易金額正確
		check_order	 = true; // 訂單正確
	}
	
	
	
	// 交易結果處理
	if(check_order){ // 訂單未遭竄改
		if(check_response){ // 交易成功
			os.setValue("os_status","Y"); // 已收款
			os.setUpdate("Hitrust_return");
			app_sm.update(os);
			// 新增付款記錄
			TableRecord ph = new TableRecord (tblph);
			ph.setValue("os_id",os.getString("os_id"));
			ph.setValue("ph_payment","Hitrust_Credit");
			ph.setValue("ph_status","Y"); // 已付款
			ph.setValue("ph_paydate","交易日期:"+orderdate);
			ph.setValue("ph_amount",approveamount.substring(0, approveamount.length()-2));
			ph.setInsert("Hitrust_return");
			app_sm.insert(ph);

		}else{ 
			os.setValue("os_status","N"); // 未收款
			os.setUpdate("Hitrust_return");
			app_sm.update(os);
			// 新增付款記錄
			TableRecord ph = new TableRecord (tblph);
			ph.setValue("os_id",os.getString("os_id"));
			ph.setValue("ph_payment","Hitrust_Credit");
			ph.setValue("ph_status","N"); // 未付款
			ph.setValue("ph_paydate","交易日期:"+orderdate);
			ph.setValue("ph_amount",approveamount.substring(0, approveamount.length()-2));
			ph.setValue("ph_memo","回應碼:"+retcode);
			ph.setInsert("Hitrust_return");
			app_sm.insert(ph);
		}
		// 接收成功請回傳 R01=00 ，可避免系統重複發送 
		out.clear();
		out.println("R01=00");
	}else{
		// 接收成功請回傳 R01=00 ，可避免系統重複發送 
		out.clear();
		out.println("R01=00");
	}
	

%>


