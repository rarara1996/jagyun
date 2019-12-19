<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%int num=1; %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$(".startDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "dd",
									minDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
								});
				
			});
</script>
<style>
input{
width:100px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h2>이달(12월)의 예약가능날짜 설정</h2>

		<div id="inner">
			<input type="text" class="startDate" id="date1">일
			<button type ="button" id="plusDate">추가</button>
		<div id="inner2">
 			<form id="scheduleUpdate" name="scheduleUpdate" action="<%= request.getContextPath() %>/PetsitterSchedule" method="post">
                <div id="inner3">
				<input id="num" name="num" value="0" type="hidden">
>
                </div>
                <button>설정</button>
            </form>
        </div>
<script>
var a=0;
	$("#plusDate").click(function(){
        var date = $("#date1").val();

         $("#inner3").append(date+"일");
		 $("#inner3").append("<input name='a"+a+"' value= '"+date+"' type='hidden'> ");
		 a=a+1;
		 $("#num").val(a);
	});
</script>
</body>
</html>