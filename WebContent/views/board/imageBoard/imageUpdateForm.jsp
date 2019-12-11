<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토리게시판 수정하기</title>
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

#imgArea{
	text-align:center;
}

#textArea{
	text-align:center;
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
   	height:30px;
   	margin-bottom:10px;
   }
  
</style>



</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">*반려견 스토리 수정하기*</font>
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
                                            <th id="title">제목 </th>
                                            <td><input type="text" size="145" id="titleInput" placeholder="*글제목*" ></td>
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
                                                <div class="detail">
                                                   <p>새로운 사진을 업로드해주세요!</p>
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
                                                  
                                                </div>
                                              <div id="textArea">
                                              <br>
                                              	<textArea cols="155" rows="10" style="resize:none" placeholder="*기존내용 받아오기*"></textArea>
                                              </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
              
              <div id="btnWrapper">
                <button id="insertBtn" onclick="" class="btn btn-outline-success">수정하기</button>
                 <button id="listBtn" onclick="" class="btn btn-outline-success">목록으로</button>
         	 </div>
         </div>
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>