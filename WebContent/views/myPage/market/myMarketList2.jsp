<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/resources/mypage/market/myMarket3.css" />
<style>
.tableArea {
	width: 70%;
	padding: 1%;
	margin-left: 7%;
	margin-top: 1%;
}

.container2 {
	margin-top: 2%; width : 100%;
}
*{
font-size:11pt;
}
</style>
</head>
<body>
<%@ include file="../common/mpNavibar.jsp"%>
<div class="tableArea">
<div id="">
								<div class="orderHistory">
									<div class="xans-element- xans-myshop xans-myshop-orderhistorytab ">
										<ul>
											<li class="selected"><a
												href="/myshop/order/list.html?history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018">주문내역조회
													(2)</a></li>
											<li class=" displaynone"><a
												href="/myshop/order/list_old.html?mode=old&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018">이전
													주문내역 (0)</a></li>
										</ul>
									</div>

									<form method="GET" id="OrderHistoryForm"
										name="OrderHistoryForm">
										<div
											class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
											<fieldset>
												<legend>검색기간설정</legend>
												<span> <a href="#none" class="btnNormal" days="00"><img
														src="" alt="오늘" /></a> <a href="#none" class="btnNormal"
													days="07"><img src="" onimage="" alt="1주일" /></a> <a
													href="#none" class="btnNormal" days="30"><img src=""
														onimage="" alt="1개월" /></a> <a href="#none" class="btnNormal"
													days="90"><img src="" onimage="" alt="3개월" /></a> <a
													href="#none" class="btnNormal" days="180"><img src=""
														offimage="" onimage="" alt="6개월" /></a>
												</span> <input id="history_start_date" name="history_start_date"
													class="fText" readonly="readonly" size="10"
													value="2019-09-09" type="text" /> ~ <input
													id="history_end_date" name="history_end_date" class="fText"
													readonly="readonly" size="10" value="2019-12-08"
													type="text" /> <input alt="조회" id="order_search_btn"
													type="image" src="" />
											</fieldset>
											<ul>
												<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수
													있습니다.</li>
												<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
												<li>주문취소는 배송 전 가능합니다.</li>
											</ul>
										</div>
										<input id="mode" name="mode" value="" type="hidden" /> <input
											id="term" name="term" value="" type="hidden" />
									</form>
									<div
										class="xans-element- xans-myshop xans-myshop-orderhistorylistitem">
										<div class="titleArea"></div>
										<table border="1" summary="">
											<caption>주문주문 상품 정보 상품 정보 목록</caption>
											<thead>
												<tr>
													<th scope="col" class="number">주문일자<br>[주문번호]
													</th>
													<th scope="col" class="product">상품정보</th>
													<th scope="col" class="quantity">수량</th>
													<th scope="col" class="price">상품구매금액</th>
													<th scope="col" class="state">주문처리상태</th>
													<th scope="col" class="service">주문취소</th>
												</tr>
											</thead>
											<tbody class="">
												<tr class="xans-record-">
													<td rowspan=3 class="number ">2019-12-01
														<p><!-- detail.html?order_id=20191201-0003711&page=1&history_start_date=2019-09-09&history_end_date=2019-12-08 -->
															<a
																href="<%= request.getContextPath() %>/views/myPage/market/myMarketDetail.jsp
																">[20191201-0003711]</a>
														</p> <a href="#none" class="displaynone"
														onclick="OrderHistory.orderCancel('20191201-0003711')"><img
															src="" alt="주문취소" /></a>
													</td>
													<td class="product"><span class="thumb"><a
															href=""><img
																src="<%= request.getContextPath() %>/resources/productBoard/imgg/강아지1.jpg"
																alt="" /></a></span>
														<p>
															<a href="/product/detail.html?product_no=9991&cate_no=64">[새움]
																MY Calendar 셀프 탁상형 달력</a>
														</p>
														<div class="option "></div>
														<p class="free displaynone"></p></td>
													<td>1</td>
													<td><strong>47,000원</strong>
														<div class="displaynone"></div></td>
													<td class="state">
														<p>배송완료</p>
														<p class="">
															<a
																href="/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=9991&opt_id=000D&is_second_delivery=F"
																target="_blank">우체국택배</a>
														</p>
														<p class="">
															<a href="#none" class="line"
																onclick="window.open('/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=9991&opt_id=000D&is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6066908062271]</a>
														</p>
													</td>
													<td class="service">
														<p class="displaynone">
															<a href="#none"
																onclick="OrderHistory.getDetailInfo('?product_no=9991&cate_no=64&order_id=20191201-0003711&ord_item_code=20191201-0003711-01');"
																class="line">[상세정보]</a>
														</p>
														<p class="">
														
														<a href="<%= request.getContextPath() %>/views/myPage/market/myOrderCancel.jsp">환불하기</a><br>
														<a href="<%= request.getContextPath() %>/views/myPage/market/myOrderCancel.jsp">주문취소</a>
														</p>
													</td>
												</tr>
												<tr class="xans-record-">
													<td class="number displaynone">2019-12-01
														<p>
															<a
																href="detail.html?order_id=20191201-0003711&page=1&history_start_date=2019-09-09&history_end_date=2019-12-08">[20191201-0003711]</a>
														</p> <a href="#none" class="displaynone"
														onclick="OrderHistory.orderCancel('20191201-0003711')"><img
															src="" alt="주문취소" /></a>
													</td>
													<td class="product"><span class="thumb"><a
															href="/product/detail.html?product_no=10022&cate_no=64"><img
																src="<%= request.getContextPath() %>/resources/productBoard/imgg/강아지2.jpg"
																alt="" /></a></span>
														<p>
															<a
																href="/product/detail.html?product_no=10022&cate_no=64">[뮤니쿤트]
																퀼팅 자켓 2color (4color)</a>
														</p>
														<div class="option ">[옵션: M]</div>
</td>
													<td>1</td>
													<td><strong>47,000원</strong>
														<div class="displaynone"></div></td>
													<td class="state">
														<p>배송완료</p>
														<p class="">
															<a
																href="/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=10022&opt_id=000A&is_second_delivery=F"
																target="_blank">우체국택배</a>
														</p>
														<p class="">
															<a href="#none" class="line"
																onclick="window.open('/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=10022&opt_id=000A&is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6066908062271]</a>
														</p>
													</td>
													<td class="service">
														<p class="displaynone">
															<a href="#none"
																onclick="OrderHistory.getDetailInfo('?product_no=10022&cate_no=64&order_id=20191201-0003711&ord_item_code=20191201-0003711-02');"
																class="line">[상세정보]</a>
														</p>
														<p class="">
<a href="<%= request.getContextPath() %>/views/myPage/report/myReportDetail.jsp">환불하기</a><br>
														<a href="<%= request.getContextPath() %>/views/myPage/report/myReportDetail.jsp">주문취소</a></p>
													</td>
												</tr>
												<tr class="xans-record-">
													<td class="number displaynone">2019-12-01
														<p>
															<a
																href="detail.html?order_id=20191201-0003711&page=1&history_start_date=2019-09-09&history_end_date=2019-12-08">[20191201-0003711]</a>
														</p> <a href="#none" class="displaynone"
														onclick="OrderHistory.orderCancel('20191201-0003711')"><img
															src="" alt="주문취소" /></a>
													</td>
													<td class="product"><span class="thumb"><a
															href="/product/detail.html?product_no=9927&cate_no=68"><img
																src="<%= request.getContextPath() %>/resources/productBoard/imgg/강아지3.jpg"
																alt="" /></a></span>
														<p>
															<a href="/product/detail.html?product_no=9927&cate_no=68">[뮤니쿤트]
																셔벗 넥워머'</a>
														</p>
														<div class="option ">[옵션: L]</div>
														<p class="free displaynone"></p></td>
													<td>1</td>
													<td><strong>37,500원</strong>
														<div class="displaynone"></div></td>
													<td class="state">
														<p>배송완료</p>
														<p class="">
															<a
																href="/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=9927&opt_id=00BD&is_second_delivery=F"
																target="_blank">우체국택배</a>
														</p>
														<p class="">
															<a href="#none" class="line"
																onclick="window.open('/common/delivery_trace.php?is12RFront=T&order_id=20191201-0003711&invoice_no=6066908062271&product_no=9927&opt_id=00BD&is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6066908062271]</a>
														</p>
													</td>
													<td class="service">
														<p class="displaynone">
															<a href="#none"
																onclick="OrderHistory.getDetailInfo('?product_no=9927&cate_no=68&order_id=20191201-0003711&ord_item_code=20191201-0003711-03');"
																class="line">[상세정보]</a>
														</p>
														<p class="">
<a href="<%= request.getContextPath() %>/views/myPage/report/myReportDetail.jsp">환불하기</a><br>
														<a href="<%= request.getContextPath() %>/views/myPage/report/myReportDetail.jsp">주문취소</a>
														</p>
													</td>
												</tr>


											</tbody>

											<tbody class="displaynone">
												<tr>
													<td colspan="6" class="empty">주문 내역이 없습니다</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div
										class="xans-element- xans-myshop xans-myshop-orderhistorypaging">
										<p>
											<a
												href="?page=1&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018"><img
												src="" alt="첫 페이지" /></a>
										</p>
										<p>
											<a
												href="?page=1&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018"><img
												src="" alt="이전 페이지" /></a>
										</p>
										<ol>
											<li class="xans-record-"><a
												href="?page=1&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018"
												class="this">1</a></li>
										</ol>
										<p>
											<a
												href="?page=1&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018"><img
												src="" alt="다음 페이지" /></a>
										</p>
										<p>
											<a
												href="?page=1&history_start_date=2019-09-09&history_end_date=2019-12-08&past_year=2018"><img
												src="" alt="마지막 페이지" /></a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

</body>
<%@ include file="../../common/footer.jsp"%>
</html>