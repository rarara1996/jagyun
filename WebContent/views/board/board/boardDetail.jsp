<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="board.model.vo.*, java.util.*, java.text.SimpleDateFormat, java.util.Date"%>
    <%
    	Board b = (Board)request.getAttribute("board");
    
    Date today = new Date();
    SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
    String tday = format1.format(today);
    
    ArrayList<Comment> clist = (ArrayList<Comment>)request.getAttribute("clist");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자견단</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/mypage/report/mpReportDetail.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="<%=request.getContextPath()%>/resources/market/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/market/css/agency.min.css" rel="stylesheet">
<style>

body{
width:60%;
}
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








/* ====================댓글달기=============== */

#replyContent{
width:80%;
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
.accordionMenu #aco {
	padding: 0 10px;
	margin: 0;
	height: 0;
	overflow: hidden;
	transition: height 0.5s ease-in;
}

.accordionMenu :target #aco {
	overflow: auto;
	height: 80px;
}
#CommentInsertBtn{
margin-top:25px;
margin-left:20px;
}



#deleteCommentBtn{
position:relative;
right:-83%;
width:90px;
height:38px;
display : inline-block;
}
</style>



</head>

	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000"><%=b.getTitle() %></font>
                            </h2>
                        </div>
                    </div>
                    
	<form id="BoardDelForm" name="" action="/exec/front/Board/del/1" method="post" target="_self"  enctype="multipart/form-data">
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                                    <caption></caption>
                                    <tbody>
                                        
                                        <tr>
                                            <th id="writer">작성자 </th>
                                            <td><span><%=b.getUserName() %></span> </td>
                                        </tr>
                                         <tr>
                                            <th>작성일</th>
                                            <td><span><%=b.getEnrollDate() %></span> </td>
                                        </tr>
                                        
                                        <tr class="view">
                                            <td colspan="2">
                                                <div class="detail" id="detail">
                                                   <p id="centent"><%=(b.getContent()).replace("\r\n","<br>") %></p>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
              
              <div id="btnWrapper">
              <button id="listBtn" onclick="location.href='<%=request.getContextPath() %>/list.bo'" class="btn btn-outline-success">목록으로</button>
              <!--  로그인 시 나타는 버튼 -->
              <%if (b.getUserName().equals(loginUser.getUserName())){ %>
                <button id="updateBtn" type="button" onclick="updateBoard()" class="btn btn-outline-success">수정하기</button>
                <button id="deleteBtn" type="button" onclick="deleteBoard()" class="btn btn-outline-danger">삭제하기</button>
                 <%} %>
         	 </div>
              <hr>
              

          <!-- 리뷰 작성폼 -->
			<div class="ddd">
				<!-- List group -->
				<ul class="list">
				<li class="list-group-item note-item clearfix" id="note-524235">
						<div class="content-body panel-body pull-left">
							<div class='avatar avatar-medium clearfix'>
								<!-- member에서 이미지받아오면 여기서 쓰기 -->
								<img src='imgg/강아지1.jpg' class="review">
							</div>
							<span class="nickname"><strong><%=loginUser.getUserName() %></strong></span>
							<div id="note-text-524235">
								<textarea rows="3"  id="replyContent" name="commentContent" style="resize:none"></textarea>
								<button id="CommentInsertBtn" class="btn btn-outline-success">댓글작성</button>
								
									<div class="date-created">
										<span class="timeago"><%= tday %></span>
									</div>
							
							</div>
						</div>
					</li>
				
				</ul>
				<ul class="list" id="commentul">

					
					<!--  댓글목록 불러오기 -->
					<%if(clist != null){ %>
						<% for(Comment c : clist){ %>
					
					<li class="list-group-item note-item clearfix" id="note-524236">
						<div class="content-body panel-body pull-left">
							<div class='avatar avatar-medium clearfix'>

								<img src='imgg/강아지1.jpg' class="review">
							</div>
							<span class="nickname"><strong><%=c.getUserName() %></strong></span>
							<%--댓글 삭제를 위한 보이지 않는 form --%>
							<form action="" id="commentForm" method="post">	<input type="hidden" value="<%=c.getCommentNo()%>" id="commentNo"name="commentNo">
								<input type="hidden" value="<%=c.getBoardNo()%>" id="cBoardNo"name="cBoardNo"></form>
						
							<div id="note-text-524235">
							
							
								<p id="commentP"><%=c.getContent() %>  </p> 
								  <%if (b.getUserName().equals(loginUser.getUserName())){ %>
								<button id="deleteCommentBtn" onclick="deleteComment()" class="btn btn-outline-danger">삭제하기</button>
							<%} %>
									<div class="date-created">
										<span class="timeago"><%=c.getEnrollDate() %></span>
									</div>
								
							</div>
						</div>
					</li>
					
					<%} %>
				<%} %>
					
				</ul>
			</div>
		
		</div>
          <%--댓글폼 끝 --%>
         
           	<form action="" id="detailForm" method="post">
		<input type="hidden" name="boardNo" value="<%=b.getBoardNo() %>">
	</form>
           
           <script>
           	function deleteBoard(){
           		if(confirm("해당 게시글을 삭제하시겠습니까?")){
           			$("#detailForm").attr("action","<%=request.getContextPath()%>/BoardDeleteServlet");
           			$("#detailForm").submit();
           		}
           	}
           	
           	function updateBoard(){
           		$("#detailForm").attr("action","<%=request.getContextPath()%>/BoardUpdateFormServlet");
           		$("#detailForm").submit();
           	}
           	
           	function deleteComment(){
           		if(confirm("해당 댓글을 삭제하시겠습니까?")){
           			$("#commentForm").attr("action","<%=request.getContextPath()%>/DeleteCommentServlet");
           			$("#commentForm").submit();
           		}
           	}
           	
           	$("#CommentInsertBtn").click(function(){
           		var writer= <%=loginUser.getUserNo() %>;
           		var boardNo =<%=b.getBoardNo()  %>;
           		var content =$("#replyContent").val();
           		
           		
           		$.ajax({
           			url :"InsertCommentServlet",
           			type:"post",
           			dataType:"json",
           			data:{
           				writer:writer,
           				content:content,
           				boardNo:boardNo},
           				success:function(data){
           				var $ul =$("#commentul")
           				 var $liStart = $("#note-524236");
           				 
           				 $ul.html("");
           				 
           				 $.each(data,function(index,value){
           					 var $li =$('<li class="list-group-item note-item clearfix" id="note-524236">');
           					 var $div1 =$('<div class="content-body panel-body pull-left">');
           					 var $div2 =$("<div class='avatar avatar-medium clearfix'>");
           					 /* 사진을 받아서 입력*/
           					 var $img1 = $("<img class='review'>").attr("src","imgg/강아지1.jpg");
           					 var $userName=$("<span class='nickname'>").text(value.userName);
           					 var $div3 =$("<div id='note-text-524235'>");
           					 var $content =$("<p>").text(value.content);
           					 var $div4 =$("<div class='date-created'>");
           					 var $enrollDate =$("<span class='timeago'>").text(value.enrollDate);
           					 
           					 
           					 $div1.append($div2);
           					 $div2.append($img1);
           					 
           					 $div1.append($userName);
           					 
           					 $div1.append($div3);
           					 $div3.append($content);
           					 $div3.append($div4);
           					 $div4.append($enrollDate);
           					 
           					 $li.append($div1);
           					 $ul.append($li);
           					 
           					 
           					 
           					 
           					 
           					 
           				 });
           				},
           				error:function(){
           					console.log('ajax 통신 실패');
           				}
           			});	
           		});
           	
           	
           	/*댓글 삭제 기능*/
        	
           		
           	
           </script>
                          
	
	
	
	
	
	
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>