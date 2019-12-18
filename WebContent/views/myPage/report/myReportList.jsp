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

.mpinner {


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

		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
<h3>1:1 문의내역</h3><br>
    <table class="table table-hover" >
    <thead>
        <tr><!-- 예약번호 클릭하면 상세페이지로이동 -->
            <th>번호</th>
            <th>문의 유형</th><!-- 예약날짜~종료날짜로 표기 -->
            <th>등록일</th>
            <th>상태</th>
        </tr>
       </thead>
        <tr>
            <td>1</td>
            <td><a href="<%= request.getContextPath() %>/views/myPage/report/myReportDetail.jsp">불량 유저 신고</a></td>
            <td>2019년 12월 14일</td>
            <td>답변대기</td>
        </tr>
          <tr>
            <td>2</td>
            <td>상품문의</td>
            <td>2019년 12월 14일</td>
            <td>답변대기</td>
        </tr>
   
    </table><br>
    <button>문의하기</button>
</div>
				</div>			
		</div></div>
	</div>
	</div>
	</div>

	<%@ include file="../../common/footer.jsp"%>
</body>
</html>