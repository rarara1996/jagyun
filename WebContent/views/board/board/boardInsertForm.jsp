<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/mypage/report/mpReportDetail.css" />
<style>
#tableWrapper{
	padding-top:5%;
	width:60%;
	height:60%;
	margin:auto;
	   margin-bottom:15px;
}

#detail{
height:300px;

}

#writer{
width:90px;
}

#btnWrapper{
position:relative;
	left:70%;
	margin-bottom:15px;
	margin-top:15px;
}

.avatar {
   display: block;
   height: 100%;
   width: 20%;
   float: left;
   text-align: center;
}

#note-text-524235 {
   display: block;
   height: 100%;
   width: 80%;
   float: left;
   font-size: 14px;
}

.review {
   border-radius: 50%;
   width: 100px;
   height: 100px;

}

#updateCommentBtn{
position:relative;
right:-65%;
width:60px;
height:35px;
}

#deleteCommentBtn{
position:relative;
right:-65%;
width:60px;
height:35px;
}

#updateBtnArea{
position:relative;
right:70%;
}

#titleInput{
	height:30px;
}

</style>



</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">게시글 작성하기*</font>
                            </h2>
                        </div>
                    </div>
                    
	<form id="BoardDelForm" name="" action="/exec/front/Board/del/1" method="post" target="_self"  enctype="multipart/form-data">
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                           
                                    <tbody>
                                         <tr>
                                            <th>제목 </th>
                                            <td><input type="text" size="145" id="titleInput"> </td>
                                        </tr>
                                        <tr>
                                            <th id="writer">작성자 </th>
                                            <td>*작성자*<span class="displaynone"></span> </td>
                                        </tr>
                                         <tr>
                                            <th>작성일</th>
                                            <td>*작성일*<span class="displaynone"></span> </td>
                                        </tr>
                                        
                                        <tr class="view">
                                            <td colspan="2">
                                                <div class="detail" id="detail">
                                                   <textArea cols="155" rows="10" style="resize:none"></textArea>
                                                   
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
              
              <div id="btnWrapper">
              
                <button id="insertBtn" onclick="" class="btn btn-outline-success">작성하기</button>
                 <button id="listBtn" onclick="" class="btn btn-outline-success">목록으로</button>
         	 </div>
              <hr>
              
         
           

              
               
               
               
       
         </div>

                          
	
	
	
	
	
	
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>