<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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



</style>



</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>
	
	<div id="tableWrapper">
	<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">*공지사항 상세보기*</font>
                            </h2>
                        </div>
                    </div>
                    
	<form id="BoardDelForm" name="" action="/exec/front/Board/del/1" method="post" target="_self"  enctype="multipart/form-data">
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                                    <caption>*공지 제목*</caption>
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
                                                   
                                                    <p>고오오오오오오오오오옹지이이이잉이이이이이사아아아아아아아하하하항<br>
                                                    	공지사항<br></p>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
              
              <div id="btnWrapper">
 
                 <button id="listBtn" onclick="" class="btn btn-outline-success">목록으로</button>
         	 </div>
              <hr>
              
             
              
           </div>   
                          
	
	
	
	
	
	
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>