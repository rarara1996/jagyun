<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>스토리 게시판 작성</title>
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
   .imgfile{
            display:none;
        }
   #imgfile{
   	height:40px;
   	margin-bottom:20px;
   }
  
        

</style>



</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">*반려견 스토리 작성하기*</font>
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
                                             <input type='file' id="imgfile">
                                             <br>
											    <div id="imgArea"></div>
											    <br>
											    <script>
											        $('#imgfile').change(function(){
											            if(this.files && this.files[0]){
											                var reader = new FileReader();
											                // 파일 내용을 읽어 들여 dataURL 형식의 문자열로 설정
											                reader.readAsDataURL(this.files[0]);
											
											                reader.onload = function(){
											                    console.log(reader.result);
											                    // div에 이미지 넣기
											                    $("#imgArea").html("<img src="+reader.result+">");
											                }
											
											            }
											        });
											    </script>
											 
                                            
                                                <div class="detail" id="detail">
                                                   <textArea cols="155" rows="10" style="resize:none" placeholder="여러분과 반려견의 스토리를 자랑해보세요!"></textArea>
                                                   <br>
                                                    
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