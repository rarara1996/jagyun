<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.SimpleDateFormat"%>
    
    <%
    Date today = new Date();
    SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
    String tday = format1.format(today);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>자견단</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/mypage/report/myReportDetail2.css" />
<style>
#tableWrapper{
	padding-top:5%;
	width:60%;
	height:60%;
	margin:auto;
	   margin-bottom:15px;
}

#detail{
margin:20px;
height:300px;

}

#writer{
width:90px;
}

#btnWrapper{
width:200px;
position:relative;
	left:80%;
	margin-bottom:15px;
	margin-top:15px;
}

#titleInput{
	height:30px;
}

/*이미지 삽입 부분*/
#imgArea{
            text-align:center;
            min-width: 500px;
            
           
        }
     #imgArea img{
     max-width:1000px;
     max-hight:1000px;  
       }

   #imgfile{
   	height:40px;
   	margin:20px;
   	
   	float:right;
   }
 
 
 /*욱재 enrollPS 훔쳐옴*/



.enroll-form-wrapper{
	height:100%;
	width:100%;
	margin:auto;
	
}
.ps-board{
	height:100%;
	width:100%;
}
/*---------------이미지------------------------*/
.represent-img{
	width:800px;

	height:400px;
	
}

.rest-img1{
	width:300px;
	height:200px;
	
}
.rest-img2{
	width:300px;
	height:200px;

}


.border{
	border:10px solid black;
}
.float-left{
	float:left;
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



</head>

<body>1212
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">반려견 스토리 작성하기</font>
                            </h2>
                        </div>
                    </div>
                    
	<form id="BoardForm" name="" action="<%=request.getContextPath() %>/IMGInsertServlet" method="post" >
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                           
                                    <tbody>
                                         <tr>
                                            <th>제목 </th>
                                            <td><input type="text" size="145" id="titleInput" name="title"> </td>
                                        </tr>
                                        <tr>
                                            <th id="writer">작성자 </th>
                                            <td><%=loginUser.getUserName() %></td>
                                        </tr>
                                         <tr>
                                            <th>작성일</th>
                                            <td><%=tday %> </td>
                                            
                                        </tr>
                                        
                                        <tr>
                                        
                                            <td colspan="2">
                                             
                                             <br>
                                             
                                          <%--훔친부분--%>
                                        
                                

		<div class="enroll-form-wrapper">
		
				<div class="represent-img border float-left" id="represent" ><img src="<%= request.getContextPath() %>/resources/board/image/clickpng.png" id="represent1" width="790px" height="390px"></div>
				<div class="rest-img border float-left">
					<div class="rest-img1 border" id="rest-img1"><img src="<%= request.getContextPath() %>/resources/board/image/clickpng.png" id="rest-img-1" width="290px" height="198px"></div>
					<div class="rest-img2 border" id="rest-img2"><img src="<%= request.getContextPath() %>/resources/board/image/clickpng.png" id="rest-img-2" width="290px" height="198px"></div>
					
				</div>
				<br clear="both">

				<input type="file" class="hidden" id="represent-btn" onchange="loadImg(this,1)">
				<input type="file" class="hidden" id="rest-img1-btn" onchange="loadImg(this,2)">
				<input type="file" class="hidden" id="rest-img2-btn" onchange="loadImg(this,3)">
				
			
		</div>

        
                                                <div class="detail" id="detail">
                                                <br>
                                                <br>
                                                   <textArea cols="150" rows="10" name="content" style="resize:none" placeholder="여러분과 반려견의 스토리를 자랑해보세요!"></textArea>
                                                   <br>
                                               
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                         <div id="btnWrapper">
              
                <button id="insertBtn" class="btn btn-outline-success">작성하기</button>
                 <button id="listBtn" type="button"onclick="<%= request.getContextPath() %>/IMGListServlet" class="btn btn-outline-success">목록으로</button>
         	 </div>
         	 
                    </form>
              
             
              <hr>
              
         
           

              
               
               
               
       
         </div>
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

				}
			}	
			//파일 읽기 하는 메소드
			reader.readAsDataURL(value.files[0]);
		}
	}
</script>
  
	
	
	
	
	
	
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>