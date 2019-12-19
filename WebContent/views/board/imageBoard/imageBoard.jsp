<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*, common.model.vo.*"%>
    
    <%
    ArrayList<Board> blist = (ArrayList<Board>)request.getAttribute("blist");
	ArrayList<IMG> flist = (ArrayList<IMG>)request.getAttribute("flist");
	
    PageInfo pi = (PageInfo)request.getAttribute("pi"); 
	
	 int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); 
    
    %>
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
	
		width:60%;
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
<img src="<%= request.getContextPath() %>/resources/board/image/imgBoard(img).png" width="100%" height="270px">
<!-- 이미지 위에 포토샾으로 자유게시판 - 사진게시판 - 펫시터게시판(리뷰) 등등 추가 -->



</header>
<nav id="in-nav">
<div id="menu">
            <ul id="navi">
                       <li><a href="<%=request.getContextPath()%>/NoticeListServlet"><img src="<%= request.getContextPath() %>/resources/board/image/notice.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/notice(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/notice.png'" width="140" height="50" class="innav-image"></a></li>
                    <li><a href="<%=request.getContextPath()%>/list.bo"><img src="<%= request.getContextPath() %>/resources/board/image/board.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/board(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/board.png'" width="140" height="50" class="innav-image"></a></li>
                      <li><a href="<%= request.getContextPath() %>/IMGListServlet"><img src="<%= request.getContextPath() %>/resources/board/image/imgBoard.png" onmouseover="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard(a).png'" onmouseout="this.src='<%= request.getContextPath() %>/resources/board/image/imgBoard.png'" width="140" height="50" class="innav-image"></a></li>
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
		<%for(Board b : blist){ %>
<div class="container">
  <div class="row">
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
      <input type="hidden" value="<%=b.getBoardNo() %>">
       <%-- 이미지 받아와서 여기 출력(insert이후에 시행 요망) --%>
       <%for(IMG image : flist){ %>
       	<%if(b.getBoardNo() == image.getBoardNo()){ %>
        <a href="<%=request.getContextPath()%>/IMGDetailServlet"><img class="card-img-top" src="<%= request.getContextPath() %>/resources/image/<%=image.getChangeName() %>" width="538" height="307" alt=""></a>
        <%} %>
       <%} %>
        <div class="card-body">
          <h4 class="card-title" >
            <a href="<%=request.getContextPath()%>/IMGDetailServlet"><%= b.getTitle()%></a>
          </h4>
        
        </div>
      </div>
    </div>
 <%} %>
    </div>
  </div>
    	<div class="pagingArea" align="center">
			<!--  맨 처음으로(<<) -->
			<button onclick="location.href='<%=request.getContextPath() %>/IMGListServlet?currentPage=1'">&lt;&lt;</button>
			
			<!--  이전 페이지로(<) -->
			<%if (currentPage == 1){ %>
				<button disabled>&lt;</button>
			<% }else{%>
				<button onclick="location.href='<%=request.getContextPath() %>/IMGListServlet?currentPage=<%=currentPage -1 %>'">&lt;</button>
			<%} %>
			
			
			<!-- 10개의 페이지 목록 -->
			<% for(int p = startPage;p<=endPage;p++){ %>
				<%if(p==currentPage){ %>
						<button disabled><%=p %></button>
					<%}else{ %>
						<button onclick ="location.href='<%=request.getContextPath() %>/IMGListServlet?currentPage=<%=p %>'"><%=p %></button>
					<%} %>
			<%} %>
			
			<!--  다음 페이지로(>) -->
			<%if (currentPage == maxPage){ %>
				<button disabled>&gt;</button>
			<% }else{%>
				<button onclick="location.href='<%= request.getContextPath() %>/IMGListServlet?currentPage=<%=currentPage +1 %>'">&gt;</button>
			<%} %>
			
			<!-- 맨 끝으로(>>) -->
			<button onclick="location.href='<%= request.getContextPath() %>/IMGListServlet?currentPage=<%=maxPage%>'">&gt;&gt;</button>
		</div> 
		<br>
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
  <% if(loginUser != null){%>
  <button id="insertBtn" onclick="location.href='<%=request.getContextPath()%>/views/board/imageBoard/imageInsertForm.jsp'" class="btn btn-outline-success">작성하기</button>
	<%} %>
</div>
			
		
  

  <!-- /.row -->

   

</div>
<!-- /.container -->






</div>
</div>
</div>
</div>
</div>

<%@ include file="../../common/footer.jsp" %>
</body>
</html>