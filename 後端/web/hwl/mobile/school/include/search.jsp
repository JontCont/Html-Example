<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

            <a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a>             
                   
				<!--<form action="media.jsp" method="post">-->
					<div class="searchBar">

						<div class="sB_item"><label for="qyear">日期範圍：</label></div>
						<div class="sB_item sB_select">
							<select name="qyear" id="qyear" title="請選擇日期範圍">
								<option value="">所有日期</option>
								
								
								<option value="2017" >2017</option>
								
								<option value="2016" >2016</option>
								
								<option value="2015" >2015</option>
								
								<option value="2018" >2018</option>
								
								<option value="2019" >2019</option>
								
							</select>
						</div>

						<div class="sB_item"><label for="query_range">查詢範圍：</label></div>
						<div class="sB_item sB_text">
							<input type="text" id="query_range" title="請輸入標題名稱、發佈單位"  placeholder="請輸入標題名稱、發佈單位" name="qstr" value="" />
						</div>

						<div class="sB_item sB_submit">
							<input type="submit" value="查詢" title="查詢" />
						</div>
						<div class="clearfloat"></div>
					</div>
				<!--</form>-->  