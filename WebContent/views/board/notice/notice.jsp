<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
<title>공지사항</title>
<style>
	#test1{

	height:400px;
	}
 	#formwrap {
            border:1px solid lightgray;
            border-radius:10px;
            width:60%;
            margin:auto;
         
            margin-bottom:50px;
            padding:3%;
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
	
	#menu{
	padding-top: 10px;
	width:100%;
	height:80%;
	position:absolute;
	left:32%;
	right:32%;	
	text-align:center;
	
	
	
	
	
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
	
	
	
</style>
</head>
<body>
<header>
 	<%@ include file="../../common/menubar.jsp" %>
<img src="<%= request.getContextPath() %>/resources/board/image/mainBoardThum.png" width="100%" height="270px">
<!-- 이미지 위에 포토샾으로 자유게시판 - 사진게시판 - 펫시터게시판(리뷰) 등등 추가 -->



</header>
<nav id="in-nav">
<div id="menu">
            <ul id="navi">
                       <li><a href="#"><img src="<%= request.getContextPath() %>/resources/board/image/notice.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/notice(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/notice.png'" width="140" height="50" class="innav-image"></a></li>
                    <li><a href="../board/board.jsp"><img src="<%= request.getContextPath() %>/resources/board/image/board.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/board(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/board.png'" width="140" height="50" class="innav-image"></a></li>
                      <li><a href="../imageBoard/imageBoard.jsp"><img src="<%= request.getContextPath() %>/resources/board/image/imgBoard.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard.png'" width="140" height="50" class="innav-image"></a></li>
                                            
                </ul>
     </div>

</nav>
<hr>

 	<div id="formwrap">
 	<h3>공지사항</h3>
    <br><br>

 
    <table class="table table-hover" >
    <thead>
        <tr>
            <th>글번호</th>
            <th>글제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>작성일자</th>
        </tr>
       </thead>
            <tr>
            <td>글번호1</td>
            <td>글제목1</td>
            <td>작성자1</td>
            <td>조회수1</td>
            <td>작성일자1</td>
        </tr>
       
   
    </table>
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
  <button id="insertBtn" onclick="" class="btn btn-outline-success">작성하기</button>
</div>
			
		</div>
  
  
	<!-- 페이징 처리 구현 필요 -->
	<div class="pagingArea" align="center">
	<!--  페 이 징 -->
	</div>
	
		



 		<%@ include file="../../common/footer.jsp" %>

</body>
</html>