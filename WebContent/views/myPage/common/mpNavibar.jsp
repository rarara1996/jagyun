<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.model.vo.*"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 1. 수직 내비게이션 바 */
.navi {
	width: /* 200px; */ 20%;
	height: 750px;
	list-style-type: none;
	margin: 0;
	margin-top: 5%;
	padding: 0;
	background-color: rgba(167, 167, 167, 0.137);
	border-radius: 16px;
	display: flex;
	flex-direction: column;
}

.navi li a {
	color: #000000;
	list-style-type: none;
	text-decoration: none;
	display: block;
	text-align: center;
	padding: 20px;
}

.navi li a:hover {
	background-color: #5caf5d;
	list-style-type: none;
	color: white;
}

.mpNav {
	width: 100%;
}

.mpButton {
	background-color: #5caf5d;
	border: none;
	color: white;
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 3px 2px;
	cursor: pointer;
	border-radius: 16px;
	width: 43%;
}

.mpButton:hover {
	background-color: rgba(125, 196, 107, 0.459);
	color: black;
}

.mpNav {
	text-align: center;
}

hr {
	margin: 0%
}

#Mpwrapper {
	display: flex;
}

.userImg {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	text-align: center;
}

@media only screen and (max-width: 870px) {
	.userImg {
		display: none;
	}
	.mpButton {
		display: none;
	}
	.navi {
		width: 100%;
		height: 580px;
	}
}
}
</style>
<body>
<%@ include file="../../common/menubar.jsp"%>
	<!--  	<div class="container2"> -->
	<div class="container2">
			<div class="mpinner">
			<div class="container">

	<div id="Mpwrapper">
		<ul class="navi">
			<li class="mpNav"><br> <img
				src="<%= request.getContextPath() %>/resources/image/dog5.jpg"
				class="userImg"> <br>
			<br>
				<p>
					<b><%=loginUser.getUserName() %>님 (<%=loginUser.getUserId() %>)</b>
				</p>
				<button class="mpButton" id="mpPwUpdate"  onclick="myPwdUpdate();">
					비밀번호<br>변경
				</button>
				<button class="mpButton" id="mpPetUpdate" onclick="myPetInfo();">
					반려견<br>관리
				</button> <br> <br>
				<hr style="border: dashed 0.7px rgba(158, 158, 158, 0.322);"></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/user/myInfoUpdate.jsp">내
					정보 변경</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/board/mpBoardList.jsp">작성한
					글</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/market/jjim.jsp">장바구니</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/market/myMarketList2.jsp">주문
					내역</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/petSitter/myPetSitterList.jsp">펫시터
					이용내역</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/petSitter/petSitterPage1.jsp">펫시터
					페이지</a></li>
			<li class="mpNav"><a
				href="<%= request.getContextPath() %>/views/myPage/report/myReportList.jsp">1:1
					문의</a></li>


		</ul>
		<br>		<br>		<br>		<br>
		<br>
		<br>
		<br>
		<br> <br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br> <br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br> <br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br> <br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		<script>
		function myPwdUpdate(){
	location.href = "<%= contextPath %>/views/myPage/user/myPwdUpdate.jsp";
};

function myPetInfo(){
	location.href = "<%= contextPath %>/myPetListServlet";
};
		</script>
</body>
</html>