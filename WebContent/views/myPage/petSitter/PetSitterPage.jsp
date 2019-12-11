<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int dogsu=0;

%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">

<style>

.container2 {
	margin-top: 2%; width : 100%;
}

*{
font-size:11pt;
}

.tableArea{
width:70%;
padding:1%;
margin-left:7%;
margin-top:1%;
}

  
        .elegant-calencar {
            width: 30em;
            height: 27em;
            border: 1px solid #c9c9c9;
            -webkit-box-shadow: 0 0 5px #c9c9c9;
            box-shadow: 0 0 5px #c9c9c9;
            text-align: center;
        	margin:auto;
            position: relative;
        }
        
        #header {
            font-family: 'HelveticaNeue-UltraLight', 'Helvetica Neue UltraLight', 'Helvetica Neue', Arial, Helvetica, sans-serif;
            height: 10em;
            background-color: #2a3246;
            margin-bottom: 1em;
        }
        
        .pre-button, .next-button {
            margin-top: 2em;
            font-size: 3em;
            -webkit-transition: -webkit-transform 0.5s;
            transition: transform 0.5s;
            cursor: pointer;
            width: 1em;
            height: 1em;
            line-height: 1em;
            color: #e66b6b;
            border-radius: 50%;
        }
        
        .pre-button:hover, .next-button:hover {
            -webkit-transform: rotate(360deg);
            -ms-transform: rotate(360deg);
            transform: rotate(360deg);
        }
        
        .pre-button:active,.next-button:active{
            -webkit-transform: scale(0.7);
            -ms-transform: scale(0.7);
            transform: scale(0.7);
        }
        
        .pre-button {
            float: left;
            margin-left: 0.5em;
        }
        
        .next-button {
            float: right;
            margin-right: 0.5em;
        }
        
        .head-info {
            float: left;
            width: 16em;
        }
        
        .head-day {

        }
        
        .head-month {
            margin-top:2em;
            margin-left:1em;
            font-size: 2em;
            line-height: 1;
            color: #fff;
        }
        
        #calendar {
            width: 90%;
            margin: 0 auto;
        }
        
        #calendar tr {
            height: 2em;
            line-height: 2em;
        }
        
        #cthead #ctr {
            color: #e66b6b;
            font-weight: 700;
            text-transform: uppercase;
        }
        
        #ctbody #ctr {
            color: #252a25;
        }
        
        #ctbody #ctd{
            width: 14%;
            border-radius: 50%;
            cursor: pointer;
            -webkit-transition:all 0.2s ease-in;
            transition:all 0.2s ease-in;
        }
        
        #ctbody #ctd:hover, .selected {
            color: #fff;
            background-color: #2a3246;
            border: none;
        }
        
        #ctbody #ctd:active {
            -webkit-transform: scale(0.7);
            -ms-transform: scale(0.7);
            transform: scale(0.7);
        }
        
        #today {
            background-color: #e66b6b;
            color: #fff;
            font-family: serif;
            border-radius: 50%;
        }
        
        #reserved {
            background-color: #6b77e6;
            color: #fff;
            font-family: serif;
            border-radius: 50%;
        }
        
        #vday {
            background-color: #6be6b7;
            color: #fff;
            font-family: serif;
            border-radius: 50%;
        }
        
        
        #disabled {
            cursor: default;
            background: #fff;
        }
        
        #disabled:hover {
            background: #fff;
            color: #c9c9c9;
        }
        
        #reset {
            display: block;
            position: absolute;
            right: 0.5em;
            top: 0.5em;
            z-index: 999;
            color: #fff;
            font-family: serif;
            cursor: pointer;
            padding: 0 0.5em;
            height: 1.5em;
            border: 0.1em solid #fff;
            border-radius: 4px;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }
        
        #reset:hover {
            color: #e66b6b;
            border-color: #e66b6b;
        }
        
        #reset:active{
            -webkit-transform: scale(0.8);
            -ms-transform: scale(0.8);
            transform: scale(0.8);     
        }
</style>
<script>
rday = new Date(2019, 12,19);
vday = new Date(2019,12,14);
document.addEventListener('DOMContentLoaded', function(){
    var today = new Date(),
        year = today.getFullYear(),
        month = today.getMonth(),
        monthTag =["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        day = today.getDate(),
        days = document.getElementsByTagName('td'),
        selectedDay,
        setDate,
        daysLen = days.length;
// options should like '2014-01-01'
    function Calendar(selector, options) {
        this.options = options;
        this.draw();
    }

    Calendar.prototype.draw  = function() {
        this.getCookie('selected_day');
        this.getOptions();
        this.drawDays();
        var that = this,
            reset = document.getElementById('reset'),
            pre = document.getElementsByClassName('pre-button'),
            next = document.getElementsByClassName('next-button');
            
            pre[0].addEventListener('click', function(){that.preMonth(); });
            next[0].addEventListener('click', function(){that.nextMonth(); });
            reset.addEventListener('click', function(){that.reset(); });
        while(daysLen--) {
            days[daysLen].addEventListener('click', function(){that.clickDay(this); });
        }
    };
    
    Calendar.prototype.drawHeader = function(e) {
        var headDay = document.getElementsByClassName('head-day'),
            headMonth = document.getElementsByClassName('head-month');

            e?headDay[0].innerHTML = e : headDay[0].innerHTML = day;
            headMonth[0].innerHTML = monthTag[month] +" - " + year;        
     };
    
    Calendar.prototype.drawDays = function() {
        var startDay = new Date(year, month, 1).getDay(),
            nDays = new Date(year, month + 1, 0).getDate(),
            n = startDay;
        for(var k = 0; k <42; k++) {
            days[k].innerHTML = '';
            days[k].id = '';
            days[k].className = '';
        }

        for(var i  = 1; i <= nDays ; i++) {
            days[n].innerHTML = i; 
            n++;
        }
        //예약일을받는당
        rday = new Date(2019,11,1);
        
        for(var j = 0; j < 42; j++) {
            if(days[j].innerHTML === ""){
                days[j].id = "disabled";
            }else if(j === day + startDay - 1){
                if((this.options && (month === setDate.getMonth()) && (year === setDate.getFullYear())) || (!this.options && (month === today.getMonth())&&(year===today.getFullYear()))){
                    this.drawHeader(day);
                    days[j].id = "today";
                }
            }

            if(rday){
                if((j === rday.getDate() + startDay - 1)&&(month === rday.getMonth())&&(year === rday.getFullYear())){
                days[j].id = "reserved";  
                }
            }
            
            if(selectedDay){
                if((j === selectedDay.getDate() + startDay - 1)&&(month === selectedDay.getMonth())&&(year === selectedDay.getFullYear())){
                days[j].className = "selected";
                this.drawHeader(selectedDay.getDate());
                }
            }
            
            if(rday){
                
            }
            

        }
    };
  
    Calendar.prototype.preMonth = function() {
        if(month < 1){ 
            month = 11;
            year = year - 1; 
        }else{
            month = month - 1;
        }
        this.drawHeader(1);
        this.drawDays();
    };

    Calendar.prototype.nextMonth = function() {
        if(month >= 11){
            month = 0;
            year =  year + 1; 
        }else{
            month = month + 1;
        }
        this.drawHeader(1);
        this.drawDays();
    };
    
    Calendar.prototype.getOptions = function() {
        if(this.options){
            var sets = this.options.split('-');
                setDate = new Date(sets[0], sets[1]-1, sets[2]);
                day = setDate.getDate();
                year = setDate.getFullYear();
                month = setDate.getMonth();
        }
    };
    
     Calendar.prototype.reset = function() {
         month = today.getMonth();
         year = today.getFullYear();
         day = today.getDate();
         this.options = undefined;
         this.drawDays();
     };
    
    Calendar.prototype.setCookie = function(name, expiredays){
        if(expiredays) {
            var date = new Date();
            date.setTime(date.getTime() + (expiredays*24*60*60*1000));
            var expires = "; expires=" +date.toGMTString();
        }else{
            var expires = "";
        }
        document.cookie = name + "=" + selectedDay + expires + "; path=/";
    };
    
    Calendar.prototype.getCookie = function(name) {
        if(document.cookie.length){
            var arrCookie  = document.cookie.split(';'),
                nameEQ = name + "=";
            for(var i = 0, cLen = arrCookie.length; i < cLen; i++) {
                var c = arrCookie[i];
                while (c.charAt(0)==' ') {
                    c = c.substring(1,c.length);
                    
                }
                if (c.indexOf(nameEQ) === 0) {
                    selectedDay =  new Date(c.substring(nameEQ.length, c.length));
                }
            }
        }
    };
    var calendar = new Calendar();
}, false);
</script>
</head>
<body>
	<%@ include file="../../common/menubar.jsp"%>

	<!--  	<div class="container2"> -->
	<div class="container2">
			<div class="mpinner">
			<div class="container">
		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
<h3>스케줄 관리</h3><br>
          <div class="elegant-calencar">

                 <div id="header" class="clearfix">
                    <div class="pre-button"><</div>
                     <div class="head-info">
                         <div class="head-day"></div>
                         <div class="head-month"></div>
                     </div>
                     <div class="next-button">></div>
                 </div>
                 <table id="calendar">
                     <thead id="cthead">
                         <tr id="ctr">
                             <th id="cth">Sun</th>
                             <th id="cth">Mon</th>
                             <th id="cth">Tue</th>
                             <th id="cth">Wed</th>
                             <th id="cth">Thu</th>
                             <th id="cth">Fri</th>
                             <th id="cth">Sat</th>
                         </tr>
                     </thead>
                     <tbody id="ctbody">
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                         <tr id="ctr">
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                             <td id="ctd"></td>
                         </tr>
                     </tbody>
                 </table>
             </div><br>
         

<br>
<h3>펫시터 페이지</h3><br>
    <table class="table table-hover" >
    <thead>
        <tr><!-- 예약번호 클릭하면 상세페이지로이동 -->
            <th>예약 번호</th>
            <th>고객 이름</th>
            <th>예약 날짜</th><!-- 예약날짜~종료날짜로 표기 -->
            <th>사전만남 날짜</th>
            <th>요청 사항</th>
            <th>반려견 정보</th>
        </tr>
       </thead>
        <tr>
            <td>1123123</td>
            <td>유수완</td>
            <td>20191214</td>
            <td>20191210</td>
            <td><a href="#">보기</a></td>
            <td><a href="#">보기</a></td>
        </tr>
          <tr>
            <td>1123423</td>
            <td>수완이</td>
            <td>20191214</td>
            <td>20191210</td>
            <td><a href="#">보기</a></td>
            <td><a href="#">보기</a></td>
        </tr>
   
    </table><br>
    
</div>
				</div>			
		</div></div>
	</div>
	</div>
	</div>

	<%@ include file="../../common/footer.jsp"%>
</body>
</html>