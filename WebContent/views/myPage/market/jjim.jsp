<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

#test1:hover {
	opacity: 0.5;
}

.searchArea {
	float: right;
	width: 300px;
}

/* 정렬폼 */
        #ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        #ul>.li {
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
        
        
.container2 {
	margin-top: 2%; width : 100%;
	margin-bottom: 10%;
}

.tableArea{
width:70%;
padding:1%;
margin-left:7%;
margin-top:1%;
}

#a{
text-align:right;
}
</style>
</head>
<%@ include file="../../common/menubar.jsp"%>
<body id="page-top">

	<div class="container2">
			<div class="mpinner">
			<div class="container">
		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
	<!-- 상품 게시판 -->

	<section class="page-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">찜목록</h2>
					<h3 class="section-subheading text-muted">설명</h3>
					<!-- ========== -->
				</div>
			</div>

			<hr>
			<br>						<div id="a"><button>삭제</button>&nbsp;&nbsp;&nbsp;<button>주문</button></div>

			<div class="row">
				<!-- ==============================상품============================== -->
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="ProductBoardDetail.jsp">

						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div> 
						<input type="checkbox">
						<img class="img-fluid" src="<%= request.getContextPath() %>/resources/productBoard/imgg/강아지1.jpg" alt="" id="test1">
					</a>
					<div class="portfolio-caption">
					
						<h6>[새움] MY Calendar 셀프 탁상형 달력</h6>
						<p class="text-muted">47,000원</p>
					</div>
				</div>
				<!-- ===================================================== -->
			</div>
		</div>
</section></div></div></div></div></div></div>

	<%@ include file="../../common/footer.jsp"%>
</body>
		
</html>