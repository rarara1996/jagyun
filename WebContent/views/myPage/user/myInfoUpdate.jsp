<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User u = (User)session.getAttribute("loginUser");

	int userNo = u.getUserNo();
	String userId = u.getUserId();
	String userName = u.getUserName();
	String userPwd = u.getUserPwd();
	String gender = u.getGender();
	String email = (u.getEmail() != null) ? u.getEmail() : "";
	String address0 = (u.getAddress() != null) ? u.getAddress() : "";
	
	String address[] = address0.split(",");
	
	
	String birth = u.getBirth();

	String phone[]= u.getPhone().split(",");
	// 값이 존재하는 인덱스에 checked라는 문자열을 넣을 용도
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/resources/mypage/css/myInfoUpdate2.css" />
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
</head>
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



*{
font-size:11pt;
}
#pwd{
font-size:8pt;
}
</style>
<body>
<%-- <%@ include file="../../common/menubar.jsp"%>
	<!--  	<div class="container2"> -->
	<div class="container2">
			<div class="mpinner">
			<div class="container"> --%>
		<%@ include file="../common/mpNavibar.jsp"%>

<div class="tableArea">
<div id="">
        <form id="updateForm" name="updateForm" action="<%= request.getContextPath() %>/UserUpdateServlet" method="post">
            <div class="xans-element- xans-member xans-member-edit">
                <h3>회원정보</h3>
                <div class="boardWrite">
                    <table border="1" summary="">
                        <caption>회원정보</caption>
                        <tbody>
                            <tr>
                                <th scope="row">아이디</th>
                                <td><span id="name_contents">
                                <input id="userNo" name="userNo" value="<%=userNo %>" hidden>
                                <input id="userId" name="userId" value="<%=userId %>" hidden>
                                <%=userId %></span> <!-- <span id="pwd">(영문소문자/숫자, 4~16자)</span> -->
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">비밀번호</th>
                                <td><input id="userPwd" name="userPwd" maxlength="16" disabled value="" type="password" />
                                    <!-- <span id="pwd">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</span></td> -->
                            </tr>

                            <tr style="display:1">
                                <th scope="row">이름</th>
                                <td><span id="name_contents"><%=userName%></span>
                                <input id="userNo" name="userName" value="<%=userName%>" hidden>
                                </td>
                            </tr>
                            <tr class="">
                                <th scope="row">생년월일</th>
                                <input id="birth" name="birth" value="<%=birth%>" hidden>
                                <td><%= birth%></td>
                            </tr>
                            <tr class="">
                                <th scope="row">성별</th>
                                <%if(gender.equals("F")){ %>
                                <td><input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="M" type="radio" /><label for="is_sex0">남자</label>
                                    <input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="F" type="radio" checked="checked" /><label for="is_sex1">여자</label></td>
                            	<%}else {%>
                                <td><input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="M" type="radio" checked="checked" /><label for="is_sex0">남자</label>
                                    <input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="F" type="radio" /><label for="is_sex1">여자</label></td>
                            	<%} %>
                            </tr>
                            <tr>
                                <th scope="row">주소</th>
                                <td>
                                    <input id="postcode1" name="addr0" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14"
                                        value="<%=address[0] %>" type="text" /> 
                                        
                                        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                                    <input id="addr1" name="addr1" class="inputTypeText" readonly="readonly" value="<%=address[1] %>" type="text" /><br />
                                    <input id="addr2" name="addr2"class="inputTypeText" value="<%=address[2] %>" type="text" /> </td>
                            </tr>
                            <tr>
                                <th scope="row">휴대전화</th>
                                <td><select id="phone1" name="phone1">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>-<input id="phone2" name="phone2" maxlength="4" value="<%=phone[1] %>" type="text" />-
                                    <input id="phone3"
                                        name="phone3" maxlength="4" value="<%=phone[2]%>" type="text" /> 
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">이메일</th>
                                <input id="email" name="email" value="<%=email%>" hidden>
                                <td><%=email %></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="btnArea">

				<button id="toMain" onclick="returnToMain()" type="button">메인으로</button>   
				<button id="updateBtn">수정하기</button>
				<button id="deleteBtn" onclick="deleteMember();" type="button">탈퇴하기</button>
                </div>
            </div>
        </form>
    </div>
    </div>
    	</div>
	</div>
	</div>
<script>


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
            document.getElementById('postcode1').value = data.zonecode;
            document.getElementById("addr1").value = roadAddr;
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


</script>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>