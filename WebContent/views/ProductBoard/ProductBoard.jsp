<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, productBoard.model.vo.* , board.model.vo.*"%>
	<%
/* 	
    ArrayList<ProductBoard> list=(ArrayList<ProductBoard>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); */

	
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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

#test1:hover {/* 물품 마우스 hover */
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
.navi{
   	list-style-type: none;
	margin: 0;
}
.navi>.lii {
	float: left;
	padding-left: 40px;
	padding-right: 40px;
}
.navi-box{
    text-align:center;
    display: inline-block;
}
.lii a {
	text-decoration: none;
	font-weight: bold;
	color: black;
	display: block;
	text-align: center;
}
.nav{
    width:90px;
    height:40px;
}
.nav:hover{
	opacity: 0.5;
    cursor: pointer;
}

#ja{
    width:20%;
    height:25%;
}
li,h6,p{
	font-family: 'Noto Sans KR', sans-serif;
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
					<img src="imgg/자견샵.png" id="ja">
					<h3 class="section-subheading text-muted">자견샵 물품은 반려견 맞춤으로 안전합니다.</h3>
					<hr>
					<!-- 상단 네이 바  -->
					<div class="navi-box">
						<ul class="navi">
							<li class="lii"><img src="imgg/야외용품.png" class="nav"></li>
							<li class="lii"><img src="imgg/패션.png" class="nav"></li>
							<li class="lii"><img src="imgg/장난감.png" class="nav"></li>
							<li class="lii"><img src="imgg/훈련용품.png" class="nav"></li>
							<li class="lii"><img src="imgg/음식.png" class="nav"></li>
							<li class="lii"><img src="imgg/기타.png" class="nav"></li>
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
			<% if(false) { %>
			 <div class="col-md-4 col-sm-6 portfolio-item">
			   <h1>상품 정보가 엄서용~</h1>
			 </div>
			<% } else {%>
<%-- 			  <% for(ProductBoard pb : list){ %>
			  <input tye="hidden" value="<% pb.getProductNo() %>">
			  
			  <%  } %> --%>
				<!-- ==============================상품============================== -->
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="ProductBoardDetail.jsp">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> <img class="img-fluid" src="imgg/강아지1.jpg" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>[새움] MY Calendar 셀프 탁상형 달력</h6>
						<p class="text-muted">47,000원</p>
					</div>
				</div>
				
				<!-- ===================================================== -->
				
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"href="#portfolioModal1">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> 
						<img class="img-fluid" src="imgg/강아지2.jpg" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>[뮤니쿤트] 퀼팅 자켓 2color</h6>
						<p class="text-muted">47,000원1</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal1">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> <img class="img-fluid" src="imgg/강아지3.jpg" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>[뮤니쿤트] 셔벗 넥워머</h6>
						<p class="text-muted">47,000원1</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal1">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> <img class="img-fluid" src="imgg/강아지4.jpg" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>상품이름1</h6>
						<p class="text-muted">47,000원1</p>
					</div>
				</div>


				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal1">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> <img class="img-fluid" src="imgg/강아지5.png" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>상품이름1</h6>
						<p class="text-muted">47,000원</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal1">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> <img class="img-fluid" src="imgg/강아지6.png" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
						<h6>상품이름</h6>
						<p class="text-muted">47,000원</p>
					</div>
				</div>
				<% } %>
			</div>
<%-- 			<div class="pagingArea" align="center">
			<!-- 맨 처음으로 (<<) -->
			<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=1'"> &lt;&lt; </button>
		
			<!-- 이전 페이지로 (<) -->
			<% if(currentPage == 1){ %>
				<button disabled> &lt; </button>
			<% } else { %>
				<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= currentPage - 1 %>'"> &lt; </button>
			<% } %>
			
			<!-- 10개의 페이지 목록 -->
			<% for(int p = startPage; p <= endPage; p++){ %>
				<% if(p == currentPage){ %>
					<button disabled> <%= p %></button>
				<% } else { %>
					<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= p %>'"> <%= p %> </button>
				<% } %>
			<% } %>
			
			<!-- 다음 페이지로(>) -->
			<% if(currentPage == maxPage) { %>
				<button disabled> &gt; </button>
			<% } else { %>
				<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= currentPage + 1 %>'"> &gt; </button>
			<% } %>
			
			<!--  맨 끝으로 (>>) -->
			<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= maxPage %>'"> &gt;&gt; </button>
		</div> --%>
			<hr>
		</div>


	</section>
</body>
<%@ include file="../common/footer.jsp"%>
</html>