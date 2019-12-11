<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
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
	right:-17px;
	top:40px;
	z-index:1;
	font-size:1.7rem;
	font-family: 'Jua', sans-serif;
}
</style>
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
								<input type="text"class="date datepicker" placeholder="시작 날짜"
									readonly="readonly" value="" /> 
								<span>&gt;</span> 
								<input type="text" class="date datepicker" placeholder="마침 날짜"
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
			<button class="sort" onclick="enroll()">등록</button>
		</div>
		<div class="margin sitter-area">
			<ul class="clearfix-li">
				<li class="sitter-info-li border">
					<div class="sitter-info-area clearfix-li"> <!-- 이 부분이  li 전체 크기 -->
						<!-- 사진 들어가는 부분 -->
						<div class="sitter-img float-left"><img class="fit" src="<%= request.getContextPath() %>/resources/petsitter/house.jpg" /></div>
						<!-- 정보 들어가는곳 -->
						<div class="sitter-info-short float-left">
							<dl class="fit">
								<dt>
									<a href="<%= request.getContextPath() %>/views/petsitter/PsDetail.jsp" class="intro">검증된 펫시터!</a>
									<label class="ps-img-area float-left"><span><img class="ps-img" src="<%= request.getContextPath()%>/resources/petsitter/me.jpg"></span>
										<span>이욱재</span>
									</label>
									<label class="ps-dog-area float-left">
										<span><img class="ps-img" src="<%= request.getContextPath()%>/resources/petsitter/dogIcon.png"></span>
										<span>2마리</span>
									</label>
								</dt>
								<br clear="both">
								<dd class="price-right">
									<label class="price-right-day">1박 / <strong>40000원</strong></label>
									<label class="price-right-day">day care/<strong>20000원&nbsp;&nbsp;</strong></label>
								</dd>
							</dl>
							<div class="score"><img class="fit" src="<%= request.getContextPath() %>/resources/petsitter/gold-medal.png"><span class="score1">9.0점</span></div>
						</div>
					</div>
				</li>
				<li class="sitter-info-li border">펫시터</li>
				<li class="sitter-info-li border">펫시터</li>
			</ul>
		</div>
	</div>
	<script>
		function enroll(){
			location.href = "<%= request.getContextPath()%>/views/petsitter/enrollPs.jsp";
		}
	</script>
	<%-- 	<%@ include file="../common/footer.jsp"%> --%>
</body>
</html>