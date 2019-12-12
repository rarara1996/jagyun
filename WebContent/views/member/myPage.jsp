<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	String pwmsg = (String)request.getAttribute("pwmsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div{
    border:1px solid black;
}
.con{
  display:inline-block;
}

.content1{
width:20%;
height:100%;
float:left;
margin-top:10%;

}
.content2{
width:80%;
height:100%;
float:left;

}

.inner{
width:100%;
height:100%;
}

#con{
width:80%;
height:80%;
margin-left: 10%;
margin-bottom: 15%;
}

.pic{
padding: 10%;
margin:10%;
}

.into{

margin:10%;
padding: 10%;
}
</style>
<script>
	var msg = "<%= pwmsg %>";
	$(function(){
		if(msg != "null"){
			alert(msg);
		}
	});
</script>


</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	

 <div class="container">
  <div class="con">
  	<div class="content1"> <a href="#"><img src="<%= request.getContextPath() %>/resources/image/main.png" id="con"></a>
    	<a href="#"><img src="<%= request.getContextPath() %>/resources/image/main.png" id="con"></a>
    	<a href="#"><img src="<%= request.getContextPath() %>/resourrces/image/main.png" id="con"></a>
    	<a href="#"><img src="<%= request.getContextPath() %>/resources/image/main.png" id="con"></a>
    </div>

    <div class="content2">
      <div class="pic">사진</div>
      <div class="into">설명</div>
	</div>
  </div>
</div>
	<%@ include file="../common/footer.html" %>

</body>
</html>