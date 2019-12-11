<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int dogsu=0;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container2 {

	margin-top: 2%; width : 100%;
}

.tableArea{
width:70%;
padding:1%;
margin-left:7%;
margin-top:1%;
}

table{
 text-align:center;
}

*{
font-size:11pt;
}
</style>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
</head>
<body>
	<%@ include file="../../common/menubar.jsp"%>

	<!--  	<div class="container2"> -->
	<div class="container2">
			<div class="mpinner">
			<div class="container">
		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
<h3>내가 쓴 글</h3><br>
    <table class="table table-hover" >
    <thead>
        <tr><!-- 예약번호 클릭하면 상세페이지로이동 -->
            <th></th>
            <th>글번호</th><!-- 예약날짜~종료날짜로 표기 -->
            <th>카테고리</th>
            <th>글제목</th>
            <th>작성일자</th>
        </tr>
       </thead>
        <tr>
            <td><input type="checkbox"></td>
            <td>1</td>
            <td>자유게시판</td>
            <td>ㅎ2</td>
            <td>2019년 12월 14일</td>
        </tr>
          <tr>
                      <td><input type="checkbox"></td>
            <td>2</td>
            <td>사진게시판</td>
            <td>하이</td>
            <td>2019년 12월 14일</td>
        </tr>
   
    </table><br>

</div>
				</div>			
		</div></div>
	</div>
	</div>
	</div>

	<%@ include file="../../common/footer.jsp"%>
</body>
</html>