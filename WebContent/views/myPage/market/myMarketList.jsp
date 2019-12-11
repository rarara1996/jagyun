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
	margin-bottom: 10%;
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
<h3>상점 이용내역</h3><br>
    <table class="table table-hover" >
    <thead>
        <tr><!-- 예약번호 클릭하면 상세페이지로이동 -->
            <th>구매번호</th>
            <th>상품번호</th><!-- 예약날짜~종료날짜로 표기 -->
            <th>사전만남 날짜</th>
            <th>결제여부</th>
            <th>맡길 유형</th>
        </tr>
       </thead>
        <tr>
            <td>1123123</td>
            <td>20191214 ~ 20191214</td>
            <td>20191214</td>
            <td>Y</td>
            <td>어쩌고저쩌고</td>
        </tr>
          <tr>
            <td>1123123</td>
            <td>20191214 ~ 20191214</td>
            <td>20191214</td>
            <td>Y</td>
            <td>어쩌고저쩌고</td>
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