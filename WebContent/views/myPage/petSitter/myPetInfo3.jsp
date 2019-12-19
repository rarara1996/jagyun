<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container2 {
	margin-top: 2%;
	width: 100%;
}

.tableArea {
	width: 70%;
	padding: 1%;
	margin-left: 5%;
	margin-top: 1%;
}

* {
	font-size: 11pt;
}


#petinfo{
    width:100%;

}
td{
    width:50%;

}

table{
width:100%;

}
.a{
    padding:0%;
    margin:0%;
    width:80%;
    height:25px;
}
#aa{
    padding:0%;
    margin:0%;
    width:50%;
    height:15px;

}
#b{
    width:10%;
}

    .c{
        text-align:right;
        padding:0%;
        margin:0%;
    }
    td{

height:80px;
padding:2%;
    background-color:rgba(235, 235, 235, 0.295);
}

.q{
    padding:0%;
    margin-bottom:1%;
    height:20px;
}
  #h{
            font-weight: 700;
            font-size:30px;
  }
  
  #bb{
  font-size:20px;
  }
  
  
  #acc{
  text-align:right;
  }
  
  table{

  }
</style>
</head>
<body>
	<%@ include file="../common/mpNavibar.jsp"%>


	<div class="tableArea">
<%if(loginUser.getDogSu()==0) {%>
	등록된 반려견이 없습니다!<br>
	반려견을 새로 등록해주세요~<br>
	<button class="btn btn-info">반려견 등록</button>
<%}else {%>

    <div id="petinfo">
       <div id="h">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <hr>
        <table>
                <tr>
                        <td class="q" colspan="2"><button>[반려견 이름]</button></td>
				 </tr>
        </table>
    <table>
<!-- 반려견있으면 뜨고 없으면 반려견이없습니다 등록하시겠습니까~ -->
        <!-- for문 돌려서.. -->
        </tr>
        <tr>
            <td class="n"><b>이름</b><br><input type="text" id="aa" class="form-control" name="" value="" disabled>

            <td><b>성별</b><br>
                <input type="radio" class="" name="" value="" disabled>암&nbsp;
                <input type="radio" class="" name="" value="" disabled>수&nbsp
            </td>
        </tr>
        <tr>
            <td><b>예방접종 여부</b><br>
            <input type="text" class="form-control" id="aa" name="" value="" disabled></td>
            <td>
                    <b>배변훈련여부</b><br>
                    <input type="radio" class="" name="" value="" disabled>했음&nbsp;
                    <input type="radio" class="" name="" value="" disabled>안했음&nbsp;
            </td>
        </tr>
        <tr>
            <td><b>중성화 여부</b><br>
                <input type="radio" class="" name="" value="" disabled>했음&nbsp;
                <input type="radio" class="" name="" value="" disabled>안했음&nbsp;</td>
            <td><b>크기</b><br>
                <input type="radio" class="" name="" value="" disabled>소&nbsp;
                <inputtype="radio" class="" name="" value="" disabled>중&nbsp;
                    <input type="radio" class="" name="" value="" disabled>대</td>
        </tr>
        <tr>
            <td><b>반려견 나이</b><br><input type="number" class="form-control" id="b" name="" value="" disabled></td>
            <td></td>
        </tr>
    </table>

</div>
<div id="acc">
    <button>추가하기</button> <button>저장하기</button> <button>삭제하기</button>
    
	</div>
	    <%} %>
	
	
	
	
	
	
	
	
	</div>
	</div>


	</div>
	</div>
	</div>
	</div>
	</div>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>