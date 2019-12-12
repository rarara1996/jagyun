<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<style>
.enrollWrapper{
	height:200vh;
	width:70%;
	margin:auto;
	margin-top:25px;
	padding:20px;
	background-color:#F2F2F2;
	margin-bottom:15px;
}
.enroll-intro{
	height:10%;
	width:80%;
	margin:auto;
	text-align:center;
	font-size:4rem;
	font-family: 'Jua', sans-serif;
	border-bottom:1px solid black;
}
.enroll-form-wrapper{
	height:85%;
	width:80%;
	margin:auto;
	margin-top:15px;
}
.ps-board{
	height:100%;
	width:100%;
}
/*---------------이미지------------------------*/
.represent-img{
	width:70%;
	height:40%;
}
.rest-img{
	width:30%;
	height:40%;
}
.rest-img1{
	width:100%;
	height:34%
}
.rest-img2{
	width:100%;
	height:33%
}
.rest-img3{
	width:100%;
	height:33%
}
/*---------------제목------------------------*/
.title{
	width:100%;
	height: 5%;
}
/*---------------서비스------------------------*/
.useable-service{
	width:100%;
	height:15%;
	background-color:white;
	padding:20px;
}
.checkbox{
	height:15px;
	width:15px;
}
.tableArea{
	margin:auto;
	width:100%;
}
.tableArea{
	text-align:center
}
/*---------------내용------------------------*/
.content{
	width:100%;
	height:32%;
	padding:10px;
	background-color:white;
}
#content{
	height:90%;
	width:100%;
	resize:none;
	border:0;
}
#counter{
	height:10%;
	width:100%;
}
/*---------------등록 버튼------------------------*/
.enroll-btn{
	height:5%
}
/*---------------자주 쓰는것들---------------------------*/
.border{
	border:10px solid black;
}
.float-left{
	float:left;
}
.margin-top{
	margin-top:15px;
}
.images{
	height:30px;
	width:30px;
	margin-top:38%;
	margin-left:48%;
}
.images1{
	height:30px;
	width:30px;
	margin-top:25%;
	margin-left:45%;
}
.hidden{
	display:none;
}
.width{
	width:100%;
}
.height{
	height:100%;
}
</style>
<script>
	$(function(){
		$("#represent").click(function(e){
			$("#represent-btn").click();
		});
		$("#rest-img1").click(function(e){
			$("#rest-img1-btn").click();
		})
		$("#rest-img2").click(function(e){
			$("#rest-img2-btn").click();
		})
		$("#rest-img3").click(function(e){
			$("#rest-img3-btn").click();
		})
	});
	function loadImg(value,num){
		//value => input type="file";
		//num => 조건문을 통해 미리보기 div 지정
		
		//file이 존재하는지 조건문
		if(value.files && value.files[0]){
			//파일을읽오들일 FileReader 객체 생성
			var reader = new FileReader();
			
			//파일 읽기가 완료 되었을때 실행되는 메소드 설정
			reader.onload = function(e){
				switch(num){
				case 1:
					$("#represent1").attr("src",e.target.result);//src에다가 읽어온 값 넣는다
					$("#represent1").css({width:"100%",height:"100%",margin:"0"});
					break;
				case 2:
					$("#rest-img-1").attr("src",e.target.result);//src에다가 읽어온 값 넣는다
					$("#rest-img-1").css({width:"100%",height:"100%",margin:"0"});
					break;
				case 3:
					$("#rest-img-2").attr("src",e.target.result);//src에다가 읽어온 값 넣는다
					$("#rest-img-2").css({width:"100%",height:"100%",margin:"0"});
					break;
				case 4:
					$("#rest-img-3").attr("src",e.target.result);//src에다가 읽어온 값 넣는다
					$("#rest-img-3").css({width:"100%",height:"100%",margin:"0"});
					break;
				}
			}	
			//파일 읽기 하는 메소드
			reader.readAsDataURL(value.files[0]);
		}
	}
</script>
<script>
		function enrollValidate(){ //유효성 검사하기 위한 부분
				if($("#represent-btn").val()== "" || $("#rest-img1-btn").val()== "" || $("#rest-img2-btn").val()== ""|| $("#rest-img3-btn").val()== ""){
					alert("사진을 4장 꼭 채우셔야 합니다!");
					console.log("비어있엉~");
					var offset = $("#represent" + seq).offset();
					var winH = $(window).height();
					$('html, body').animate({scrollTop : (offset.top - winH/2)}, 500);
					return false;
				}
				if($("#title").val()==""){
					alert("제목을 꼭 입력하셔야 합니다!.");
					$("#title").focus()
					return false;
				}
				if($("#content").val()==""){
					alert("내용을 꼭 입력하셔야 합니다!.");
					$("#content").focus()
					return false;
				}
				if($("#content").val().length<300){
					alert("본인 설명은 최소 300자 이상이여야 합니다.");
					$("#content").focus()					
					return false;
				}

				else{
					console.log($("#represent-btn").val());
					console.log($("#rest-img1-btn").val());
					console.log($("#rest-img2-btn").val());
					console.log($("#rest-img3-btn").val());
					return false;
				}
		}
</script>
</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="enrollWrapper">
		<div class="enroll-intro">펫시터 글 등록</div>
		<div class="enroll-form-wrapper">
			<form class="ps-board" onsubmit="return enrollValidate()">
				<div class="represent-img border float-left" id="represent" ><img id="represent1" class="images" src="<%= request.getContextPath() %>/resources/petsitter/plus.png"></div>
				<div class="rest-img border float-left">
					<div class="rest-img1 border" id="rest-img1"><img class="images1" id="rest-img-1" src="<%= request.getContextPath() %>/resources/petsitter/plus.png"></div>
					<div class="rest-img2 border" id="rest-img2"><img class="images1" id="rest-img-2" src="<%= request.getContextPath() %>/resources/petsitter/plus.png"></div>
					<div class="rest-img3 border" id="rest-img3"><img class="images1" id="rest-img-3" src="<%= request.getContextPath() %>/resources/petsitter/plus.png"></div>
				</div>
				<br clear="both">
				<div class="title margin-top">
					<dl>
						<dt>제목</dt>
						<dd><input id="title" class="width" type="text"></dd>
					</dl>
				</div>
				<div class="useable-service margin-top">
					<dl>
						<dt>이용 가능 서비스</dt>
						<dd>
							<table class="border tableArea margin-top">
								<tr>
									<td>
										<label for="walk">산책</label>
										<input class="checkbox" type="checkbox" id="walk" name="service" value="walk">
									</td>
									<td>
										<label for="pill">약물복용</label>
										<input class="checkbox" type="checkbox" id="pill" name="service" value="pill">
									</td>
									<td>
										<label for="play">실내놀이</label>
										<input class="checkbox" type="checkbox" id="play" name="service" value="play">
									</td>
								</tr>
								<tr>
									<td>
										<label for="madang">마당</label>
										<input class="checkbox" type="checkbox" id="madang" name="service" value="madang">
									</td>
									<td>
										<label for="pickup">픽업</label>
										<input class="checkbox" type="checkbox" id="pickup" name="service" value="pickup">
									</td>
									<td>
										<label for="shower">목욕가능</label>
										<input class="checkbox" type="checkbox" id="shower" name="service" value="shower">
									</td>
								</tr>
							</table>
						</dd>
					</dl>
				</div>
				<div class="content margin-top">
					<textarea name="requirment" id="content" placeholder="내용을 입력하세요.."></textarea>
					<span id="counter">###</span>
					<script>
					      $('#content').keyup(function (e){
					          var content = $(this).val();
					          $('#counter').html(content.length);
					      });
					      $('#content').keyup();
					</script>
				</div>
				<div class="enroll-btn border margin-top"><button type="submit" class="width height">등록</button></div>
				<input type="file" class="hidden" id="represent-btn" onchange="loadImg(this,1)">
				<input type="file" class="hidden" id="rest-img1-btn" onchange="loadImg(this,2)">
				<input type="file" class="hidden" id="rest-img2-btn" onchange="loadImg(this,3)">
				<input type="file" class="hidden" id="rest-img3-btn" onchange="loadImg(this,4)">
			</form>
		</div>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>