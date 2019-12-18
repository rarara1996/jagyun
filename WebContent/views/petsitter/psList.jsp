<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, petsitter.model.vo.*, common.model.vo.*"%>
<%
	ArrayList<PsBList> psb = (ArrayList<PsBList>)request.getAttribute("bList");
	ArrayList<IMG> iList = (ArrayList<IMG>)request.getAttribute("iList");
	ArrayList<IMG> pList = (ArrayList<IMG>)request.getAttribute("pList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- <link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet"> -->
<!-- 달력을 위해사용하는것 -->
<!--  -->
<style>
.petsitter-container {
	width: 65%;
	height: 250vh;
	margin: auto;
}

.margin {
	margin-top: 3%;
}

.filter-area {
	height: auto;
	margin-top: 2%;
}

.how-many-petsitter {
}


.sitter-area {
	height: 85%;
	margin-top: 4%;
}

.clearfix {
	list-style-type: none;
	padding: 0;
	margin: 0;
	border: 1px solid black;
}
/* before 와 after가 쓰이는 방법
		해당 태그::before를 쓰면은 해당 태그의 내용이 있기 전에 태그와 똑같은 태그를 가상을 만들어 놓는다는 얘기이다.
		이미지 내에서는 내용이 없기 때문에 이미지는 이걸 쓸수가 없다.
		ul은 li가 float를 바꾸는 순간 ul의 테두리는 li를 감싸지 않는다. 그래서 
		ul content밖에(마지막 li다음에) 임의로 content를 넣어줘서 그부분까지 담게 하는것이다.
	*/
.clearfix::after {
	content: 'asdas';
	clear: both;
	display: block;
}

.left {
	float: left;
	margin-left: 2%;
	margin-top: 2%;
}

/* .con-btn {
	right: 100px;
} */

.con-btn .btn-c {
	margin-top: 25%;
}
.score-review {
	margin-top:10px;
	position:relative;
	width:100%;
}
.score-review::after{
	content:"";
	clear: both;
	display: block;
}
.sort{
	padding:0;
	float:right;
}
#enroll{
	display:none;
}
.sitter-info-li{
	margin-top:2%;
	background-color:#F2F2F2;
}
.sitter-img{
	height:28vh;
	width:35%;
}
.sitter-info-short{
	height:28vh;
	width:60%;
	padding:30px;
	position:relative;
}
.float-left{
	float:left;
}
.intro{
	display:block;
	text-decoration:none;
	font-size:2.5rem;
	font-family:bold;
	margin-bottom:2%;
	font-family: 'Jua', sans-serif;
	color:#5caf5d;
}
.show-info{
	margin-left:10%;
	margin-top:3%;
}
.price-right{
	position:relative;
	width:100%;
	border-top:1px solid black;
}
.price-right-day{
	padding:0;
	float:right;
	font-size:1.5rem;
}
.margin-top{
	margin-top:5%;
}
.clearfix-li{
	list-style-type: none;
	padding: 0;
	margin: 0;
}
.clearfix-li::after{
	content:"";
	clear: both;
	display: block;
}
.price-right-day strong{
	font-size:1em;
}
.price-right::after{
	content:"";
	clear: both;
}
.ps-img{
	height:35px;
	width:35px;
	border-radius:75px;
	margin-right:3%;
}
.fit{
	width:100%;
	height:100%;
}
.border{
	border:1px solid black
}
.ps-img-area{
	width:50%;
}
.ps-dog-area{
	width:50%;
}
.score{
	position:absolute;
	height:90px;
	width:90px;
	right:0px;
	top:10px;
	z-index:2;
}
.score1{
	position:absolute;
	height:90px;
	width:90px;
	right:-27px;
	top:40px;
	z-index:1;
	font-size:1.7rem;
	font-family: 'Jua', sans-serif;
}
</style>
<script>
$(function(){
	$.datepicker.setDefaults($.datepicker.regional['ko']); 
    $( "#startDate" ).datepicker({
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달', 
         dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dateFormat: "yymmdd",
         minDate: 0,
         onClose: function( selectedDate ) {    
              //시작일(startDate) datepicker가 닫힐때
              //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
             $("#endDate").datepicker( "option", "minDate", selectedDate );
         }    

    });
    $( "#endDate" ).datepicker({
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달', 
         dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dateFormat: "yymmdd",
         // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
         onClose: function( selectedDate ) {    
             // 종료일(endDate) datepicker가 닫힐때
             // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
         }    

    });    
})
</script>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
	<div class="petsitter-container">
		<div class="margin filter-area">
			<form class="conditions">
				<ul class="clearfix">
					<li class="left con-type">
						<dl>
							<dt>서비스</dt>
							<dd>
								<select>
									<option title="24시간 돌봄" value="1" selected="selected">24시간
										돌봄</option>
									<option title="데이케어" value="2">데이케어</option>
								</select>
							</dd>
						</dl>
					</li>
					<li class="left con-date">
						<dl>
							<dt>예약일을 알려주세요!</dt>
							<dd>
								<input id="startDate" type="text"class="date datepicker" placeholder="시작 날짜"
									readonly="readonly" value="" /> 
								<span>&gt;</span> 
								<input id="endDate" type="text" class="date datepicker" placeholder="마침 날짜"
									readonly="readonly" value="" />
							</dd>
						</dl>
					</li>
					<li class="left con-age">
						<dl>
							<dt>반려견 나이</dt>
							<dd>
								<select>
									<option title="강아지" value="1311">강아지 (1살이하)</option>
									<option title="성견" value="1312">성견 (2~6살)</option>
									<option title="노령견" value="1313">노령견 (7살이상)</option>
								</select>
							</dd>
						</dl>
					</li>
					<li class="left con-size">
						<dl>
							<dt>반려견 크기</dt>
							<dd class="margin-end">
								<select>
									<option title="소형견" value="1321">소형견 (0~4.9kg)</option>
									<option title="중형견" value="1322">중형견 (5~14.9kg)</option>
									<option title="대형견" value="1323">대형견 (15kg 이상)</option>
								</select>
							</dd>
						</dl>
					</li>
					<li class="left con-btn">
						<dl>
							<dd>
								<button class="btn-c">검색하기</button>
							</dd>
						</dl>
					</li>
				</ul>
			</form>
		</div>
		<div class="margin how-many-petsitter">123명의 검증된 펫시터가 검색되어졌습니다.</div>
		<div class="score-review">
			<button class="sort">점수</button>
			<button class="sort">리뷰</button>
			<button id="enroll" class="sort" onclick="enroll()">등록</button>
		</div>
		<div class="margin sitter-area">
			<ul class="clearfix-li">
				<% for(PsBList pbl: psb) {%>
					<li class="sitter-info-li border">
						<div class="sitter-info-area clearfix-li"> <!-- 이 부분이  li 전체 크기 -->
							<!-- 사진 들어가는 부분 -->
							<div class="sitter-img float-left">
								<% for(IMG img : iList) {%>
									<% if(pbl.getPsBoardNo() == img.getBoardNo()) {%>
										<img class="fit" src="<%= request.getContextPath() %>/resources/psboard/<%=img.getChangeName() %>" />
									<%} %>
								<%} %>
							
							</div>
							<!-- 정보 들어가는곳 -->
							<div class="sitter-info-short float-left">
								<dl class="fit">
									<dt>
										<a href="<%= request.getContextPath() %>/views/petsitter/PsDetail.jsp" class="intro"><%= pbl.getTitle() %></a>
										<label class="ps-img-area float-left">
											<span>
												<%for(IMG img : pList) {%>
													<%if(pbl.getUserNo() == img.getUserNo() ) {%>
														<img class="ps-img" src="<%= request.getContextPath()%>/resources/userImg/<%= img.getChangeName() %>">
													<%} %>
												<%} %>
											</span>
											<span><%= pbl.getUserName() %></span>
										</label>
										<label class="ps-dog-area float-left">
											<span><img class="ps-img" src="<%= request.getContextPath()%>/resources/petsitter/dogIcon.png"></span>
											<span><%= pbl.getDogSu() %>마리</span>
										</label>
									</dt>
									<br clear="both">
									<dd class="price-right">
										<label class="price-right-day">1박 / <strong><%= pbl.getOneDayPrice() %>원</strong></label>
										<label class="price-right-day">day care/<strong><%= pbl.getHourPrice() %>원&nbsp;&nbsp;</strong></label>
									</dd>
								</dl>
								<div class="score">
									<%if(pbl.getScore() > 7) {%>
										<img class="fit" src="<%= request.getContextPath() %>/resources/petsitter/gold-medal.png">
									<%} else if(pbl.getScore()>4 && pbl.getScore()<8){%>
										<img class="fit" src="<%= request.getContextPath() %>/resources/petsitter/silver-medal.png">
									<%} else{%>
										<img class="fit" src="<%= request.getContextPath() %>/resources/petsitter/bronze-medal.png">
									<%} %>
								<span class="score1"><strong><%= pbl.getScore() %>점</strong></span>
								</div>
							</div>
						</div>
					</li>	
				<%} %>
			</ul>
		</div>
	</div>
	<script>
		function enroll(){
			location.href = "<%= request.getContextPath()%>/views/petsitter/enrollPs.jsp";
		}
		$(function(){
			$.ajax({
				url : "<%= request.getContextPath() %>/CheckPsBoard",
				success:function(data){
					console.log("ajax 통신 성공")
					if(data == "ps-ok"){
						$("#enroll").css("display","block");
					}
				},
				error:function(){
					console.log("ajax 통신 실패")
				}
			});
		})
	</script>
	<%-- 	<%@ include file="../common/footer.jsp"%> --%>
</body>
</html>