<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<style>
#text {
	width: 300px;
	height: 50px;
	border: 1px solid rgba(0, 128, 0, 0.507);
	background-color: rgba(0, 0, 0, 0.048);
}

#text2 {
	width: 90px;
	height: 50px;
	border: 1px solid rgba(0, 128, 0, 0.507);
	background-color: rgba(0, 0, 0, 0.048);
}

.outer {
	margin-left: 10%;
	margin-right: 10%;
}

.inner {
	margin-left: 20%;
}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
	<div class="container">
		<br>
		<h2 align="center">회원가입</h2>

		<form id="joinForm" name="joinForm"
			action="<%= request.getContextPath() %>/InsertMemberServlet" method="post"
			onsubmit="return joinValidate();">
			<div>
				<div class="inner">
					* 아이디<br> <input type="text" maxlength="13" name="userId"
						id="text" required>
					<button id="idCheck" type="button">중복확인</button>
				</div>
				<br>
				<div class="inner">
					* 비밀번호<br> <input type="password" maxlength="15" id="text"
						name="userPwd" required>
				</div>
				<br>
				<div class="inner">
					* 비밀번호 확인<br> <input type="password" maxlength="15" id="text"
						name="userPwd2" required> <label id="pwdResult"></label>
				</div>
				<br>
				<div class="inner">
					* 이름<br> <input type="text" maxlength="5" id="text"
						name="userName" required>
				</div>
				<br>
				<div class="inner">
					성별<br> <input type="radio" class="gender" id="man" name="gender" value="man"> 남성
					<input type="radio" class="gender" id="woman" name="gender" value="woman"> 여성

				</div>
				<br>
				<div class="inner">
					연락처<br>
					<select id="phone1" name="phone1" fw-filter="isNumber&isFill" fw-label="휴대전화"
                                        fw-alone="N" fw-msg="">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>-<input id="phone2" name="phone2" maxlength="4">-
                                        <input id="phone3" maxlength="4" name="phone3"> 

				</div>

				<br>
				<div class="inner">
<%-- 					<form action="<%= request.getContextPath() %>/email" method="post" >
						이메일:<input name="email" type="email" id="text">
						<button>인증하기</button>
						
					</form> --%>
					이메일:<input name="email" type="email" id="text">
				</div>
				<br>
				<div class="inner">
					주소<br> <input type="text" id="sample4_postcode"
						placeholder="우편번호"> <input type="button"
						onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="doro">
					 <input type="text" id="sample4_detailAddress" placeholder="상세주소" name="detail">
					</tr>
				</div>
				<br>
				<div class="inner">
					몇 마리의 반려견을 갖고 있나요?(5마리까지 가능)<br> <input type="number"
						name="dogSu" id="dogsu">
				</div>

				<div class="inner">
					<br> 주민등록번호 앞자리(6자리 입력 ex)950101)<br> <input type="text"
						name="birth" id="birth" maxlength="6">
				</div>
				<br>
				<div class="inner">
					사진(선택사항)<br> <input type="file" name="uploadfile" id="pic">
				</div>
				<div class="btns" align="center">
					<button id="toMain" onclick="returnToMain()" type="button">메인으로</button>
					<button id="joinBtn">가입하기</button>
				</div>
		</form>
<br><br><br>

	</div>
	</div>
	<script>
		// 1. 메인으로 돌아가기
		function returnToMain(){
			location.href="<%= request.getContextPath() %>";
		}

		// 2. 유효성 검사
		function joinValidate(){
			if(!(/^[a-z][a-z\d]{3,11}$/.test($("#joinForm input[name=userId]").val()))){
				alert('아이디는 영소문자로 시작해서 4~12자 입력(숫자 포함 가능)');
				$("#joinForm input[name=userId]").select();
				return false;
			}
			
			if($("#joinForm input[name=userPwd]").val() != $("#joinForm input[name=userPwd2]").val()){
				$("#pwdResult").text("비밀번호 불일치").css("color","red");
				return false;
			}
			
			if(!(/^[가-힣]{2,}$/.test($("#joinForm input[name=userName]").val()))){
				alert('이름은 한글로 2글자 이상 입력');
				$("#joinForm input[name=userName]").select();
				return false;
			}
			
			return true;
			
		}
	
		// 3. 회원 가입
		// InsertMemberServlet 만들어서 진행
		
		// 4. 아이디 중복체크


    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
}

    
	$(function(){
		
		var isUsable = false;
		// 아이디 중복 시 false, 아이디 사용 가능 시 true -> 나중에 유효성 검사
		
		$("#idCheck").click(function(){
			var userId = $("#joinForm input[name='userId']");
			
			if(!userId || userId.val().length < 4){
				alert("아이디는 최소 4자리 이상이어야 합니다.");
				userId.focus();
			}else{
				// ajax로 중복 여부 확인
				$.ajax({
					url : "<%=request.getContextPath()%>/IdCheckServlet",
					type : "post",
					data : {userId:userId.val()},
					success : function(data){
						if(data == "fail"){
							alert('사용할 수 없는 아이디입니다.');
							userId.focus();
						}else{
							if(confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")){
								userId.prop('readonly', true); 
								// -> 더 이상 userId에 값 입력해서 변경할 수 없도록
								isUsable = true;
								// -> 사용 가능하다는 flag 값
							}else{
								userId.focus();
							}
						}
						if(isUsable){
							// 아이디 중복 체크 후 사용 가능한 아이디이며 사용하기로 한 경우
							// 회원가입 버튼 활성화
							$("#joinBtn").removeAttr("disabled");
						}
					},
					error : function(){
						console.log('서버 통신 안됨');
					}
				});
			}
		});
	});

</script>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>
