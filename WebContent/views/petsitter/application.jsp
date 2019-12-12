<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/resources/mypage/css/myInfoUpdate.css" />
<style>
textarea{
	width:80%;
	height:100%;
}
.reason{
	height:150px;
	resize:none;
}
body{
	
}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
		<div class="container">
			  <form id="editForm" name="editForm" action="/exec/front/Member/edit/" method="post" target="_self" enctype="multipart/form-data">
	            <div class="xans-element- xans-member xans-member-edit">
	                <h3>펫시터 정보</h3>
	                <div class="boardWrite">
	                    <table border="1" summary="">
	                        <caption>회원정보</caption>
	                        <tbody>
	                            <tr>
	                                <th scope="row">지원 동기</th>
	                                <td>
	                                    <textarea class="reason"></textarea>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th scope="row">직업여부</th>
	                                <td>
	                                   	<label for="yes">유</label>
	                                   	<input name="checkJob" id="yes" type="radio" value="Y">
	                                   	<label for="no">무</label>
	                                   	<input name="checkJob" id="no" type="radio" value="N">
	                                </td>
	                            </tr>                            <tr>
	                                <th scope="row">반려견 유무</th>
	                                <td>
	                                	<label for="yes">유</label>
	                                   	<input name="checkPet" id="yes" type="radio" value="Y">
	                                   	<label for="no">무</label>
	                                   	<input name="checkPet" id="no" type="radio" value="N">
	                                </td>
	                            </tr>                            <tr>
	                                <th scope="row">돌봄경험</th>
	                                <td>
	                                    <input type="number" min="0" step="1">
	                                </td>
	                            </tr>                            <tr>
	                                <th scope="row">관련 자격증</th>
	                                <td>
	                                    <textarea style="resize:none;"></textarea>
	                                </td>
	                            </tr>                            
	
	                        </tbody>
	                    </table>
	                </div>
	                <div class="btnArea">
	                    <button>취소</button>
	                    <button onclick="applyPs()">지원하기</button>
	                </div>
	            </div>
	        </form>
	</div>
</body>
</html>