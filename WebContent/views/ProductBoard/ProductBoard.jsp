<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, productBoard.model.vo.* , common.model.vo.*"%>
<%
	ArrayList<ProductBoard> plist = (ArrayList<ProductBoard>)request.getAttribute("blist");
	ArrayList<IMG> flist = (ArrayList<IMG>)request.getAttribute("flist");
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
<!-- Bootstrap core CSS -->
<link
	href="<%= request.getContextPath() %>/resources/market/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link
	href="<%= request.getContextPath() %>/resources/market/css/agency.min.css"
	rel="stylesheet">
<style>
#img1 {
	width: 100%;
	height: 100%;
}

#test1:hover { /* 물품 마우스 hover */
	opacity: 0.5;
}

.searchArea { /* 검색 창 */
	float: right;
	width: 300px;
}

/* 정렬폼 */
.ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	margin-left: auto;
	margin-right: auto;
}

.ul>.li {
	float: left;
}

.li a {
	text-decoration: none;
	font-weight: bold;
	color: gray;
	display: block;
	text-align: center;
	padding: 10px;
}

/* 상단 네비 */
.navi {
	list-style-type: none;
	margin: 0;
}

.navi>.lii {
	float: left;
	padding-left: 40px;
	padding-right: 40px;
}

.navi-box {
	text-align: center;
	display: inline-block;
}

.lii a {
	text-decoration: none;
	font-weight: bold;
	color: black;
	display: block;
	text-align: center;
}

.nav {
	width: 90px;
	height: 40px;
}

.nav:hover {
	opacity: 0.5;
	cursor: pointer;
}

#ja {
	width: 20%;
	height: 25%;
}
</style>
</head>
<%@ include file="../common/menubar.jsp"%>
<body id="page-top">


	<!-- 상품 게시판 -->
	<section class="bg-light page-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<img src="<%= request.getContextPath() %>/resources/productBoard/imgg/자견샵.png" id="ja">
					<h3 class="section-subheading text-muted">자견샵 물품은 반려견 맞춤으로
						안전합니다.</h3>
					<hr>
					<!-- 상단 네이 바  -->
					<div class="navi-box">
						<ul class="navi">
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/야외용품.png" class="nav"></li>
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/패션.png" class="nav"></li>
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/장난감.png" class="nav"></li>
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/훈련용품.png" class="nav"></li>
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/음식.png" class="nav"></li>
							<li class="lii"><img src="<%= request.getContextPath() %>/resources/productBoard/imgg/기타.png" class="nav"></li>
						</ul>
					</div>
					<!-- 상단 네이 바  -->
					<br>
					<hr>
					<br>
					<!-- 정렬폼 -->
					<div class="sort">
						<ul class="ul">
							<li class="li"><a href="#"><h6>최근 등록 순</h6></a></li>
							<li class="li"><a href="#"><h6>판매 수량 순</h6></a></li>
							<li class="li"><a href="#"><h6>낮은 가격 순</h6></a></li>
							<li class="li"><a href="#"><h6>높은 가격 순</h6></a></li>
							<li class="li"><a href="#"><h6>상품평 순</h6></a></li>
						</ul>
					</div>

					<!-- 검색폼 -->
					<div class="searchArea" align="center">
						<div class="input-group mb-3">
							<input type="text" class="form-control"
								aria-describedby="button-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-success" type="button"
									id="searchBtn">검색하기</button>
							</div>
						</div>
					</div>
					<!-- ========== -->
				</div>
			</div>



			<div class="row">
				<% for(ProductBoard pb : plist){ %>
				<!-- ==============================상품============================== -->
				<div class="col-md-4 col-sm-6 portfolio-item">
					<input type="hidden" value="<%= pb.getProductNo() %>"> 
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> 
						<% for(IMG at : flist){ %>
						<% if(pb.getProductNo() == at.getProductNo()){ %>
						<img class="img-fluid" src="<%= request.getContextPath() %>/resources/productBoard/<%= at.getChangeName() %>" id="test1">
							<% } %>
						<% } %>
					<div class="portfolio-caption">
						<h6><%= pb.getProductName() %></h6>
						<p class="text-muted"> <%= pb.getPrice() %>원</p>
					</div>
				</div>
			<% } %>
				<!-- ===================================================== -->
			</div>
			<hr>
		</div>
		<script>
		// 상세 보기
		$(function(){
			$(".col-md-4").click(function(){
				var product_No = $(this).children().eq(0).val();
				location.href="<%= request.getContextPath() %>/ProductBoardDetailServlet?product_No="+product_No;
			});
		});
		</script>

		 <%if(loginUser!=null && (loginUser.getUserId()).equals("adminjagyun")){ %>
			<button onclick="location.href='<%= request.getContextPath() %>/views/ProductBoard/ProductBoardInsert.jsp'">작성하기</button>
		<% } %>
	</section>
</body>
<%@ include file="../common/footer.jsp"%>
</html>