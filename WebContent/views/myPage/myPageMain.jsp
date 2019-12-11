<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String contextPath = request.getContextPath();

%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Dashboard</title>

  <!-- Custom fonts for this template-->

<style>
#inner{
margin-top:5%;
margin-bottom:10%;
width:100%;

}

.card{

              box-shadow:12px 12px 10px 9px rgba(128, 128, 128, 0.404);
}
.select{
	width:15%;
	height:15%;
	margin:3%;
}

#wrapper,#content-wrapper,.card-header,.card-footer,.row,.col-lg-12,.card mb-12{
width:100%;
}

.selectList{
text-align:center;
}

p{
font-size:2em;
margin:3%;
text-align:center;
}

.col-lg-12{
margin-bottom:10%;
}

hr{
width:80%;

}
#hr{
margin-left:0%;}

.mpButton {
  background-color: #5caf5d;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}

.mpButton:hover {
  background-color: #f1f1f1;
  color:black;
}

.userImg{
 	border-radius: 100%;
	width:100%;
	height:100%;
}

#userImg{
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
	border-radius: 50%;
		width:300px;
	height:300px;
	       border : 5px rgba(102, 102, 102, 0.514) solid;
	       text-align:center;

	       display:inline-block;
} 

#page-top{
background-color:rgba(231, 230, 230, 0.24)}
</style>
</head>

<body id="page-top">
	<%@ include file="../common/menubar.jsp" %>
<div class= "container">
<div id="inner">
  <div id="wrapper">

    <div id="content-wrapper">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="card mb-12">
<br><br>
<strong><p>OOO 회원님 환영합니다!</p></strong>
<div id="hr">
<hr></div>
<div class="selectList"><br>
<div id="petPic">

<div id="userImg">
  <img src="<%= request.getContextPath() %>/resources/image/dog5.jpg" class="userImg"> 
  </div><br><br>ㅇㅇㅇ (ID)<br><br>
<button class="mpButton" id="mpPwUpdate" onclick="myPwdUpdate();">비밀번호 변경</button>&nbsp;&nbsp;&nbsp;&nbsp;
<button class="mpButton" id="mpPetUpdate" onclick="myPetInfo();">반려견 관리</button>&nbsp;&nbsp;&nbsp;&nbsp;
<button class="mpButton" id="mpPetUpdate" onclick="jjim();">장바구니</button>

</div>
<br>
<a href="<%= request.getContextPath() %>/views/myPage/user/myInfoUpdate.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpMyinfo.png" class="select"></a>
<a href="<%= request.getContextPath() %>/views/myPage/board/mpBoardList.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpBoardList.png" class="select"></a>
<a href="<%= request.getContextPath() %>/views/myPage/market/myMarketList2.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpOrderList.png" class="select"></a><br>
<a href="<%= request.getContextPath() %>/views/myPage/petSitter/petSitterPage1.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpPetsitterPage.png" class="select"></a>
<a href="<%= request.getContextPath() %>/views/myPage/petSitter/myPetSitterList.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpPetsitterService.png" class="select"></a>
<a href="<%= request.getContextPath() %>/views/myPage/report/myReportList.jsp"><img src="<%= request.getContextPath() %>/resources/mypage/image/mpReport.png" class="select"></a>
<br><br>
<div id="hr">
<hr></div><br><br><br><br>
              </div>

            </div>
          </div>
        </div>

</div>
 </div>

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

</div>
</div>
  <!-- Bootstrap core JavaScript-->

<%@ include file="../common/footer.jsp" %>

<script>
function myPwdUpdate(){
	location.href = "<%= contextPath %>/views/myPage/user/myPwdUpdate.jsp";
};

function myPetInfo(){
	location.href = "<%= contextPath %>/views/myPage/petSitter/myPetInfo.jsp";
};

function jjim(){
	location.href = "<%= contextPath %>/views/myPage/market/jjim.jsp";
}



</script>
</body>

</html>
