<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/resources/mypage/css/myInfoUpdate2.css" />
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
<%@ include file="../../common/menubar.jsp"%>

	<!--  	<div class="container2"> -->
	<div class="container2">
			<div class="mpinner">
			<div class="container">
		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
<div id="">
        <form id="" name="" action="" method="post" target="_self">
            <div class="xans-element- xans-member xans-member-edit">
                <h3>회원정보</h3>
                <div class="boardWrite">
                    <table border="1" summary="">
                        <caption>회원정보</caption>
                        <tbody>
                            <tr>
                                <th scope="row">아이디</th>
                                <td>
                                    <input id="userId" name="userId" class="inputTypeText" placeholder="" readonly="readonly"
                                        value="ccaa1111" type="text" /> <span id="pwd">(영문소문자/숫자, 4~16자)</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">비밀번호</th>
                                <td><input id="userPwd" name="userPwd" maxlength="16" "disabled" value="" type="password" />
                                    <span id="pwd">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</span></td>
                            </tr>
                            <tr>
                                <th scope="row">비밀번호 확인</th>
                                <td><input id="userPwd2" name="userPwd2" maxlength="16"
                                     "disabled" value="" type="password" /></td>
                            </tr>
                            <tr style="display:1">
                                <th scope="row">이름</th>
                                <td><span id="name_contents">유수완</span></td>
                            </tr>
                            <tr class="">
                                <th scope="row">생년월일</th>
                                <td>19950403</td>
                            </tr>
                            <tr class="">
                                <th scope="row">성별</th>
                                <td><input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="M" type="radio" /><label for="is_sex0">남자</label>
                                    <input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" disabled="1"
                                        value="F" type="radio" checked="checked" /><label for="is_sex1">여자</label></td>
                            </tr>
                            <tr>
                                <th scope="row">반려견 수</th>
                                <td><input type="number" id="dogsu" name="dogsu" value="1"> 마리</td>
                            </tr>
                            <tr>
                                <th scope="row">주소</th>
                                <td>
                                    <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1"
                                        fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14"
                                        value="어디어디" type="text" /> <a href="#none" title="우편번호(새창으로 열기)" onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'ko_KR');"
                                        id="postBtn"><img src="" alt="우편번호" /></a><br />
                                    <input id="addr1" name="addr1" fw-filter="isFill" fw-label="주소" fw-msg="" class="inputTypeText"
                                        placeholder="" readonly="readonly" value="저기저기" type="text" /><br />
                                    <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText"
                                        placeholder="" value="여기여기" type="text" /> </td>
                            </tr>
                            <tr>
                                <th scope="row">휴대전화</th>
                                <td><select id="mobile1" name="mobile[]" fw-filter="isNumber&isFill" fw-label="휴대전화"
                                        fw-alone="N" fw-msg="">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>-<input id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill"
                                        fw-label="휴대전화" fw-alone="N" fw-msg="" value="4895" type="text" />-<input id="mobile3"
                                        name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화"
                                        fw-alone="N" fw-msg="" value="1214" type="text" /> 
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">이메일</th>
                                <td><input id="email1" name="email1" fw-filter="isFill&isEmail" fw-label="이메일" fw-alone="N"
                                        fw-msg="" value="tndhks123@nate.com" type="text" /></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="btnArea">

                    </span>
                    <a href="/index.html"><img src="" alt="취소" /></a>
                    <a href="#none" onclick="memberEditAction()"><img src="" alt="회원정보수정" /></a>
                </div>
            </div>
        </form>
    </div>
    </div>
    	</div>
	</div>
	</div>
	
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>