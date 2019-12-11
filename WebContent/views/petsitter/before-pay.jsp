<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.border{
	border:1px solid black;
}
/*----------전체 구조 틀------------*/
.before-pay-wrapper{
	width:75%;
	margin:auto;
	height:200vh;
	margin-top:3%;
	padding-left:10%;
	padding-right:10%;
}
.ps-profile{
	width:100%;
	height:9%;
}
.price-info-wrapper{
	width:100%;
	height:18%;
	position:relative;
	padding:10px;
}
.reserv-caution{
	width:100%;
	height:15%;
	margin-top:5%;
	background-color:#F6E3CE;
	padding:15px
}
.reserv-require{
	width:100%;
	height:20%;
	padding:15px
}
.reserv-premeet{
	width:100%;
	height:8%;
	margin-top:1%;
}
.agreement{
	width:100%;
	height:10%;
	font-size:0.8rem;
	margin-top:2%;
}
.reserv-btn{
	margin-top:5%;
	width:100%;
	height:5%;
}
/*----------------------------------------------*/
.ps-img-dog{
	height:100px;
	width:100px;
	position:relative;
}
.ps-img{
	height:100%;
	width:100%;
	border-radius:50%;
	border:1px solid green;
	padding:3%
}
.ps-dog{
	position:absolute;
	height:50px;
	width:50px;
	bottom:-5px;
	right:-10px;
	border-radius:50%;
	z-index:1;
	border:2px solid #FFBF00;
}
.reserv-intro{
	width:100%;
	height:100%;
	margin-top:2%;
}
.reserv-intro1{
	margin-left:18%;
	font-size:1.8rem;
}
.reserv-intro2{
	margin-left:18%;
}
.ri-sp1{
	font-size:1.5rem;
}
.ri-sp2{
	font-size:1.3rem;
}
/*-----------------가격 부분----------------------------*/
.insert-date{
	width:100%;
	height:5%;
}
.price-info-detail{
	width:100%;
	height:100%;
}
.price-inf0{
	width:100%;
	height:22%;
	position:relative;
}
.price-info1{
	width:100%;
	height:20%;
	margin-left:30%;
}
.price-info2{
	width:100%;
	height:80%;
}
.howMuch{
	width:50%;
	text-align:left;
	margin-top:2%;
}
.real-price{
	width:50%;
	text-align:right;
	margin-top:2%;
}
.add-pet{
	width:60%;
	text-align:left;
	padding-top:2%;
	border-top:1px solid gray;
}
.add-pet-price{
	width:40%;
	text-align:right;
	padding-top:2%;
	border-top:1px solid gray;
}
.howMuch2{
	width:50%;
	text-align:left;
	border-top:1px solid gray;
	padding-top:2%;
	font-size:1.8rem;
	font-family: 'Do Hyeon', sans-serif;
	color:#FE642E;
}
.real-price2{
	width:50%;
	text-align:right;
	padding-top:2%;
	border-top:1px solid gray;
	font-size:1.8rem;
	font-family: 'Do Hyeon', sans-serif;
	color:#FE642E;
}
/*---------------------------------------------*/
.list{
	padding-left:2%;
}
#requirment{
	height:100%;
	width:100%;
	resize:none;
	border:0;
}
/*---------------------------------------------*/
.premeet{
	font-family: 'Do Hyeon', sans-serif;
	font-family: 'Noto Sans KR', sans-serif;	
}
.premeet-exp{
	font-size:0.8rem;
}
/*---------------------------------------------*/
.checking{
	font-size:1.2rem;
}
.checkbox{
	height:15px;
	width:15px;
}
/*---------------------------------------------*/
.reserv-btn1{
	height:100%;
	width:30%;
	font-family: 'Do Hyeon', sans-serif;
	color:white;
	background-color:#FE642E;
	font-size:2rem;
	border:0;
	outline:0;
	border-radius:10px;
}
/*---------------------------------------------*/
.float-left{
	float:left;
}
.float-right{
	float:right;
}
.border-none{
	border:none;
	text-align:center;
}
/*---------------------------------------------*/
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<form class="before-pay-wrapper">
		<div class="ps-profile">
			<div class="ps-img-dog float-left">
				<div class="ps-img"><img src="<%= request.getContextPath() %>/resources/petsitter/me.jpg" style="height:100%;width:100%;border-radius:50%;"></div>
				<div class="ps-dog"><img src="<%= request.getContextPath() %>/resources/petsitter/jjing.jpg" style="height:100%;width:100%;border-radius:50%;"></div>
			</div>
			<div class="reserv-intro">
				<dl>
					<dt class="reserv-intro1"><span class="ri-sp1">이욱재</span><span class="ri-sp2">님에게 예약 요청 메시시를 보냅니다.</span></dt>
					<dd class="reserv-intro2">아래 예약 내역을 확인후 돌보미에게 문의하세요</dd>
				</dl>
			</div>
		</div>
		
		<div class="price-info-wrapper border">
				<div class="insert-date">
					<div style="border:1px solid #848484; border-radius: 3px; margin-top:20px">
						<input class="float-left border-none" type="text" value="" placeholder="시작 날짜" readonly style="width:45%;">
						<span class="float-left" style="width:10%; text-align:center">&gt;</span>
						<input class="float-left border-none" type="text" value="" placeholder="끝나는 날짜" readonly style="width:45%;">				
						<br clear="both">
					</div>
				</div>
				<div class="price-info">
					<div class="price-info2">
						<dl class="price-info-detail">
							<dt class="howMuch float-left">1박</dt>
							<dd class="real-price float-left"> 40000원</dd>
							<br clear="both">
							<dt class="add-pet float-left">반려견 <span>1마리</span></dt>
							<dd class="add-pet-price float-left"> 40000원</dd>
							<br clear="both">
							<dt class="howMuch2 float-left">최종금액</dt>
							<dd class="real-price2 float-left"> 40000원</dd>
						</dl>
					</div>
				</div>
		</div>
		<div class="reserv-caution">
			<h4 style="font-family: 'Do Hyeon', sans-serif;">예약 요청 전 꼭 확인해주세요.</h4>
			<ul class="list">
				<li>어쩌구저쩌구</li>
				<li>어쩌구저쩌구</li>
				<li>어쩌구저쩌구</li>
				<li>어쩌구저쩌구</li>
				<li>어쩌구저쩌구</li>
				<li>어쩌구저쩌구</li>
			</ul>
		</div>
		<div class="reserv-require border">
			<textarea name="requirment" id="requirment" placeholder="이욱재 돌보미에게 예약 요청을 위해 메시지를 남겨주세요"></textarea>
		</div>
		<div class="reserv-premeet">
			<dl>
				<dt class="premeet">사전만남 가능 일자를 알려주세용!</dt>
				<dd class="premeet-exp">사전만남이란? 돌봄 전 돌보미와 의뢰인, 의뢰인의 반려견이 사전에 만나 체크리스트를 작성하고 미리 시간을 함께 보내는 것으로, 최소 예약 3~5일 전까지 진행하시는 것을 권장하며 첫거래시에만 필수로 진행하고 있습니다. 사전만남없이 돌봄을 진행할 경우 돌보미에 따라 예약이 불가할 수 있습니다. </dd>
				<dd><input type="text" placeholder="사전만남 날짜를 입력해주세요" style="width:100%;"/></dd>
			</dl>
		</div>
		<div class="agreement">요청 시 잘못된 정보를 전달할 경우 이로인해 발생되는 문제에 대한 책임은 의뢰인 본인에게 있습니다.
'예약 요청'을 클릭하면 서비스 총액을 지불하는 것과 서비스 약관, 환불정책에 동의하는 것입니다.
돌보미가 예약 요청을 수락해야 결제를 진행 할 수 있으며, 24시간 이내에 돌보미가 요청에 대한 응답을 할 것 입니다.
고객이 펫시터에게 성적 수치심을 느끼게 하거나 정신적으로 고통을 입을 수 있는 언행을 했을 시, 펫시터가 손해배상을 청구할 수 있습니다. 또한 성희롱이 정도를 넘어 성범죄에 해당 하는 경우에는 형법, 성폭력범죄의 처벌 등에 관한 특례법 위반 등으로 형사처벌을 받을 수 있습니다.
			<br><br>
			<input id="checkId" type="checkbox" class="checkbox"/> 
			<label for="checkId" class="checking">해당 내용을 확인했습니다.</label>
		</div>
		<div class="reserv-btn">
			<button class="reserv-btn1">예약요청</button>
		</div>
	</form>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>