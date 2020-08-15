<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
Vector<TableRecord> np0 = app_sm.selectAll(tblnp,
		"np_code=? AND np_lang=? AND (? BETWEEN DATE_FORMAT(np_emitdate,'%Y/%m/%d') and DATE_FORMAT(np_restdate,'%Y/%m/%d'))",
		new Object[]{"news", lang, app_today},
		"np_showseq ASC , np_emitdate DESC , np_modifydate DESC , np_createdate DESC limit 5");
%>
                                             
		<!--國際證照列表-->
		<div class="SchoolLicenseList_area">
			    <%for (TableRecord np : np0) {%>
			<div class="SchoolLicenseList"><!--沒有照片時class內加noImg-->
				<div class="nL_img">
					 <a href="<%=np.getString("np_mobile")%>" target="<%=np.getString("np_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_title")%>">
						<img src="<%=app_fetchpath + "/banner/" + lang + "/" + np.getString("np_image")%>" alt="<%=np.getString("np_alt")%>" title="<%=np.getString("np_alt")%>" />
					 </a>
				</div>
				
					<div class="SchoolnL_right">
					    <div class="SchooLR_time"><%=np.getString("np_emitdate")%></div>
						<div class="SchoonLR_tit">
					    	<a href="<%=np.getString("np_mobile")%>" target="<%=np.getString("np_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_title")%>">
							<p><%=np.getString("np_title")%></p></a>
					    </div>
					    <div class="SchoonLR_remark"><%=np.getString("np_desc")%></div>
					</div>
			</div>
			<%}%>
		</div>        
		                
		                
		                
		 <div class="page_area_rwd">
                    <script type='text/javascript'>
                        $(document).ready(function() {
                            $("#page_select").change(function() {
                                goselectedpage($("#page_select").val());
                            });
                        });
                    </script>
                    
                    <div class="page_left_arrow"></div>
                    
                    <div class="page_select">
                        <select id="page_select" onchange="page_select()">
                            <option selected>
                                1
                            </option>
                            
                            <option >
                                2
                            </option>
                            
                            <option >
                                3
                            </option>
                            
                            <option >
                                4
                            </option>
                        </select>
                    </div>
                    <div class="page_right_arrow">
                        <a href="javascript:goselectedpage(2);" title="下一頁"> &gt; </a>
                    </div>
                    <div class="clearfloat"></div>
						<form name="pageform" method="post" action="/web/about/news.jsp">
						<input type="hidden" name="npage" value="1">
						<input type="hidden" name="qstr" value="">
						<input type="hidden" name="qyear" value="">
						</form>
                
            </div>  