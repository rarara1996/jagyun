<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>자견단</title>
<style>
	header{
	height:270px;
	
	
	}
	

	#menu{
	
	width:100%;
	height:80%;
	position:absolute;
	left:32%;
	right:32%;	
	text-align:center;
padding-top: 10px;
	
	
	
	
	}
	#in-nav{
		
	background:white;
	height:50px;
	
}

.innav-image{
margin:auto;
}
	
	
#navi li{

    display: inline;
}


#navi li a{
    float: left;
    font : bold 14px 굴림;
    line-height: 40px;
    color : black;
    text-decoration: none;
    margin : 0;
    padding : 0 30px;

}


   .searchArea {
		width:650px;
		margin:auto;
		margin-bottom: 50px;
	}
	
	#searchBtn{
	border-radius: 4px;
	margin-right:5px;
	}

#submitBtn{
position:relative;
	left:90%;
	margin-bottom:15px;
}
	
</style>

<link	href="<%= request.getContextPath() %>/resources/market/vendor/bootstrap/css/bootstrap.min.css"	rel="stylesheet">
<link	href="<%= request.getContextPath() %>/resources/market/vendor/bootstrap/css/bootstrap.css"	rel="stylesheet">
<link	href="<%= request.getContextPath() %>/resources/js/jquery.slim.min.js">


</head>
<body>
 

 <%@ include file="../../common/menubar.jsp" %>
<header>
<img src="<%= request.getContextPath() %>/resources/board/image/mainBoardThum.png" width="100%" height="270px">
<!-- 이미지 위에 포토샾으로 자유게시판 - 사진게시판 - 펫시터게시판(리뷰) 등등 추가 -->



</header>
<nav id="in-nav">
<div id="menu">
            <ul id="navi">
                       <li><a href="../notice/notice.jsp"><img src="<%= request.getContextPath() %>/resources/board/image/notice.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/notice(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/notice.png'" width="140" height="50" class="innav-image"></a></li>
                    <li><a href="../board/board.jsp"><img src="<%= request.getContextPath() %>/resources/board/image/board.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/board(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/board.png'" width="140" height="50" class="innav-image"></a></li>
                      <li><a href="#"><img src="<%= request.getContextPath() %>/resources/board/image/imgBoard.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard.png'" width="140" height="50" class="innav-image"></a></li>
                </ul>
     </div>

</nav>
<hr>
<!-- Page Content -->

	<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
				<br>
					<h2 class="section-heading text-uppercase">반려견 스토리</h2>
					<h3 class="section-subheading text-muted">반려견과 함께한 이야기들을 공유해주세요!</h3>
					<br>
					<hr>
				
				</div>
			</div>
		</div>
<div class="container">
  <div class="row">
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="imageBoardDetail.jsp"><img class="card-img-top" src="<%= request.getContextPath() %>/resources/image/2019112119244542076.jpg" width="538" height="307" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">사진1</a>
          </h4>
          <p class="card-text">텍스트1</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="<%= request.getContextPath() %>/resources/image/2019112119244542076.jpg" width="538" height="307" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">사진2</a>
          </h4>
          <p class="card-text">텍스트2</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="<%= request.getContextPath() %>/resources/image/2019112119244542076.jpg" width="538" height="307"  alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">사진3</a>
          </h4>
          <p class="card-text">텍스트3</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="<%= request.getContextPath() %>/resources/image/2019112119244542076.jpg" width="538" height="307" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">사진4</a>
          </h4>
          <p class="card-text">텍스트4</p>
        </div>
      </div>
    </div>
    
		  <!--  검색창  -->
  	<div class="searchArea" align="center">
			
			<div class="input-group mb-3">
			<select id="searchCondition" name="searchCondition">
				<option>----</option>
				<option value="writer">작성자</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
  				<input type="text" class="form-control" aria-describedby="button-addon2">
 			 <div class="input-group-append">
    		<button class="btn btn-outline-success" type="button" id="searchBtn">검색하기</button>
  </div>
  <button id="insertBtn" onclick="location.href='imageInsertForm.jsp'" class="btn btn-outline-success">작성하기</button>
</div>
			
		</div>
  </div>
  

  <!-- /.row -->

   

</div>
<!-- /.container -->










<%@ include file="../../common/footer.jsp" %>
</body>
</html>