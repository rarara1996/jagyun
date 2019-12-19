<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        * {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.containera {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.rowa:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

#category{
    width:200px;
}
.container2 {

	margin-top: 2%; width : 100%;
}

.tableArea{
width:70%;
padding:1%;
margin-left:7%;
margin-top:1%;
}

table{
 text-align:center;
}

*{
font-size:11pt;
}


</style>
</head>
<body>

		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
 <p><h2>1:1 문의</h2></p>
 <hr>
<br>

    <div class="containera">
        <form action="/action_page.php">
            <div class="rowa">
                <div>
                    <p><b>문의 유형</b></p>
                    <select id="category" name="category">
                        <option value="australia">불량 유저 신고</option>
                        <option value="canada">불량 펫시터 신고</option>
                        <option value="usa">상품문의</option>
                        <option value="usa">배송문의</option>
                        <option>주문/결제 문의</option>
                    </select>
                </div>
            </div><br>
            <div class="rowa">
				<div>
                <p><b>주문 번호</b></p> <!-- 불량유저신고-게시글 번호 불량펫시터신고-펫시터이용번호 상품문의-상품번호 배송문의/주문결제문의-주문번호 -->
                <input type="text" class="input" id="lname" name="lastname">
                </div>
            </div><br>
            <div class="rowa">
                <p><b>이메일 (기재 시 답변 등록 안내 이메일 발송)</b></p>
                <input type="text"  class="input" id="lname" name="lastname">
            </div><br>
            <div class="rowa">
                <p><b>내용</b></p>
                <textarea id="subject" name="subject" placeholder="" style="height:200px"></textarea>
            </div>
<br>
            <div class="rowa">

                <input type="submit" value="등록">
            </div>
        </form>
    </div>
	</div>
	</div>
	</div>
	</div>
	</div>

	<%@ include file="../../common/footer.jsp"%>
</body>
</html>