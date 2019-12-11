<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <style>
    .article,.policy_summary{font-size:12px;line-height:16px;color:#666}
.article{margin-top:15px}
.article .article__title{padding-bottom:8px}
.article__text+.article__text{margin-top:8px}
.article__text a{color:#08A600}
.article__text em{color:#000}
.article__text__list{position:relative;padding-left:20px}
.article__text__list:before{content:'';display:block;position:absolute;top:7px;left:8px;width:2px;height:2px;background:#8e8e8e}
.article__text__list+.article__text__list{margin-top:5px}
.text_underline{text-decoration:underline}
.article:first-child{margin-top:0}
.article .article__title,.clause .clause__title,.paragraph .paragraph__title{font-size:12px;font-weight:700;line-height:16px}
.terms_box{position:relative;overflow:auto;height:88px;margin-top:8px;padding:12px;border:1px solid #dadada;background:#fff;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;scrollbar-base-color:#d9d9d9;scrollbar-arrow-color:#8e8e8e;scrollbar-3dlight-color:#d9d9d9;scrollbar-darkshadow-color:#d9d9d9;scrollbar-face-color:#d9d9d9;scrollbar-highlight-color:#d9d9d9;scrollbar-shadow-color:#d9d9d9;scrollbar-track-color:#f2f2f2;-webkit-overflow-scrolling:touch}.terms_box .article{font-size:12px;line-height:16px;color:#666}.t .terms_box::-webkit-scrollbar{overflow:visible;width:6px;margin-right:10px;background:0 0}.t .terms_box::-webkit-scrollbar-thumb{min-height:20px;margin:0 5px 0 0;-webkit-border-radius:5px;background-color:rgba(45,70,97,.3)}.t .terms_box::-webkit-scrollbar-thumb:hover{background-color:rgba(45,70,97,.3)}.t .terms_box::-webkit-scrollbar-corner{background:0 0}
ul {
            list-style-type:none;
            margin:0;
            padding:0;
        }

.article{
    margin:5%;
}

 </style>
</head>
<body>


	<%@ include file="../common/menubar.jsp" %>
	<div class="container">
<div class="join_content">
    <div class="join_form">
   
    <p><input type="checkbox" id="termsService" name="termsService" class="chk">
    <label>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택)에 모두 동의합니다</label></p>
    <div class="article">
    <ul class="terms_bx_list">
        <li class="terms_bx">
                <span class="input_chk">
                <input type="checkbox" id="termsService2" name="termsService" class="chk">
                <label for="Service"> 이용약관 동의(필수)</label>
                <div class="terms_box" tabindex="0" id="divService">   
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                    어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                    쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                    고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                    꼬어쩌고저쩌꼬어쩌고저쩌꼬
                </span>
                </li>
            <br>
                <li class="terms_bx">
                        <span class="input_chk">
                        <input type="checkbox" id="termsService3" name="termsService" class="chk">
                        <label for="Service"> 이용약관 동의2 (필수) </label>
                        <div class="terms_box" tabindex="0" id="divService">   
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
                            어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                            쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                            고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                            꼬어쩌고저쩌꼬어쩌고저쩌꼬
    
                        </span>
                        </li>
         <br>
    <li class="terms_bx">
            <span class="input_chk">
            <input type="checkbox" id="termsService4" name="termsService4" class="chk">
            <label for="Service"> 이용약관 동의3(선택)</label>
            <div class="terms_box" tabindex="0" id="divService">   
                  
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어
                쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌
                고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬
                어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌
                꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어쩌고저쩌꼬어


            </span>
            </li>
</ul>
<br>
<div class="btns" align="center">
        <button id="toMain" onclick="returnToMain()" type="button">취소</button>
        <button id="btt">확인</button>
    </div>


</div>
</div>
</div>
</div>

<script>


                var checked1 = false;
                var checked2 = false;
                var checked3 = false;
                var checked4 = false;

                $("#termsService").change(checkedChange1);
                $("#termsService2").change(checkedChange2);
                $("#termsService3").change(checkedChange3);
                $("#termsService4").change(checkedChange4);

                function checkedChange1() {
                    if ($(this).prop("checked")) {
                        checked1 = true;
                    } else {
                        checked1 = false;
                    }
                }
                function checkedChange2() {
                    if ($(this).prop("checked")) {
                        checked2 = true;
                    } else {
                        checked2 = false;
                    }
                }

                function checkedChange3() {
                    if ($(this).prop("checked")) {
                        checked3 = true;
                    } else {
                        checked3 = false;
                    }
                }

                function checkedChange4() {
                    if ($(this).prop("checked")) {
                        checked4 = true;
                    } else {
                        checked4 = false;
                    }
                }

                $("#btt").on("click", function () {
                    if (!checked2 || !checked3)
                    {
                        alert('이용약관에 동의해주세요')
                    } else {
            			location.href="<%= contextPath %>/views/member/memberJoinForm.jsp";
                    }
                });
                
                $("#termsService").change(function(){
                    checked2 = true;
                    checked3 = true;
                    checked4 = true;
                    $("#termsService2").attr( 'checked', true );
                    $("#termsService3").attr( 'checked', true );
                    $("#termsService4").attr( 'checked', true );
                    
                });

</script>
</div>
	<%@ include file="../common/footer.jsp" %>

</body>
</html>