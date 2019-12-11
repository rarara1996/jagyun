<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
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

</style>



</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">*게시글 상세보기*</font>
                            </h2>
                        </div>
                    </div>
                    
	<form id="BoardDelForm" name="" action="/exec/front/Board/del/1" method="post" target="_self"  enctype="multipart/form-data">
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                                    <caption>*글 제목*</caption>
                                    <tbody>
                                        
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
                                                   
                                                    <p>게시글 내용게시글 내용게시글 내용게시글 내용게시글 내용게시글 내용<br>
                                                    	게시글 내용게시글 내용게시글 내용게시글 내용게시글 내용게시글 내용<br></p>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
              
              <div id="btnWrapper">
              <!--  로그인 시 나타는 버튼 -->
                <button id="insertBtn" onclick="location.href='boardUpdateForm.jsp'" class="btn btn-outline-success">수정하기</button>
                 <button id="listBtn" onclick="location.href='board.jsp'" class="btn btn-outline-success">목록으로</button>
         	 </div>
              <hr>
              
                <div class="ddd">
            <!-- List group -->
            <ul class="list">

               <!-- 리뷰 -->
               <li class="list-group-item note-item clearfix" id="note-524235">
                  <div class="content-body panel-body pull-left">
                     <div class='avatar avatar-medium clearfix'>

                        <img src='<%= request.getContextPath() %>/resources/image/2019112119244542076.jpg' class="review">
                     </div>
                     <span class="nickname"><strong>골댕이</strong></span>
                     <div id="note-text-524235">
                        <p>리뷰입니다.</p>
                        <div class="avatar-info">
                           <div class="date-created">
                              <span class="timeago">2019-12-09</span>
                              
                           <!--  로그인시 나타나는 메뉴 -->
                              <button id="updateCommentBtn" onclick="" class="btn btn-outline-success">수정</button>
                 			<button id="deleteCommentBtn" onclick="" class="btn btn-outline-danger">삭제</button>
                 			
                 			
                           </div>
                            
                        </div>
                     </div>
                     </div>
               </li>
               <!-- 리뷰 -->
               
               
               
            </ul>
         </div>
              
           </div>   
                          
	
	
	
	
	
	
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>