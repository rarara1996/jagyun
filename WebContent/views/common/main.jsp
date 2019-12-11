<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>


<html>
   <head>
      <title>boram3</title>
      <meta http-equiv="content-type" content="text/html; charset=utf-8" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />

<link
	href="<%= request.getContextPath() %>/resources/main/mainStyle.css"
	rel="stylesheet">
	
	<style>
	.homepage{
	margin-top:4%;
	}
	</style>

   </head>


   <body class="homepage">
   	<%@ include file="../common/menubar.jsp" %>

   	<div class ="container">
      <!-- Main -->
      <div id="main">
    
            <div class="row"> 
               
               <!-- Content -->
               <div id="content" class="8u skel-cell-important">
                  <section>
                     <header>
                        <h2></h2>
                        
                     </header>

                     <!-- 이부분에 슬라이드 -->
                     <a href="#" class="image full"><img src="<%= request.getContextPath() %>/resources/image/dog7.jpg"  alt="" /></a>


                     <p>우리 <strong>견자단은</strong>댕댕이를 사람과 같이 생각합니다.</p>
                     <p>반려동물은 ‘가슴으로 만든 가족’ 입니다.
우리와 삶을 함께하며 기쁨과 즐거움, 행복과 사랑을 안겨준
이 세상 무엇으로도 대신할 수 없는 소중한 선물입니다.
최고의 서비스와 깜짝 선물로 고마운 마음을 전하세요.ㅋㅋzzzzz
</p>
                  </section>
               </div>
               
               <!-- Sidebar -->
               <div id="sidebar" class="4u">
                  <section>
                     <header>
                        <h2>펫시터정보</h2>
                     </header>
                     <ul class="style">
                        <li>
                           <p class="posted">펫시터란?</p>
                           <img src="<%= request.getContextPath() %>/resources/image/dog2.png" width="70px" height="70px" alt="" />
                           <p class="text">집에 혼자있는... (펫시터정보 요약)</p>
                        </li>
                        <li>
                           <p class="posted">이번달 최고의 펫시터</p>
                           <img src="<%= request.getContextPath() %>/resources/image/dog3.jpg" width="70px" height="70px" alt="" />
                           <p class="text">김김김 펫시터님(후기보기)</p>
                        </li>
                        <li>
                           <p class="posted">펫시터 지원하기</p>
                           <img src="<%= request.getContextPath() %>/resources/image/dog4.jpg" width="70px" height="70px" alt="" />
                           <p class="text">펫시터 지원을 위해... </p>
                        </li>
                     </ul>
                  </section>
               </div>
            </div>
         </div>
      </div>
</div>
      <!-- Footer -->
      <div id="featured">
         <div class="container">
            <div class="row">
               <div class="4u">
                  <h2>자유게시판</h2>
                  <a href="<%= request.getContextPath() %>/views/board/board/board.jsp" class="image full"><img src="<%= request.getContextPath() %>/resources/image/dog5.jpg" width="380px" height="160px" alt="" /></a>
                  <p>다양한 주제로 자유로운 이야기를 주고 받으세요!</p>
                  <p><a href="#" class="button">More Details</a></p>
               </div>
               <div class="4u">
                  <h2>반려견 스토리</h2>
                  <a href="<%= request.getContextPath() %>/views/board/imageBoard/imageBoard.jsp" class="image full"><img src="<%= request.getContextPath() %>/resources/image/dog6.jpg" width="380px" height="160px" alt="" /></a>
                  <p>여러분들의 댕댕이를 자랑해보세요!.</p>
                  <p><a href="#" class="button">More Details</a></p>
               </div>
               <div class="4u">
                  <h2>공지사항</h2>
                  <a href="<%= request.getContextPath() %>/views/board/notice/notice.jsp" class="image full"><img src="<%= request.getContextPath() %>/resources/image/dog7.jpg" width="380px" height="160px" alt="" /></a>
                  <p>새로운 내용을 확인하세요!</p>
                  <p><a href="#" class="button">More Details</a></p>
               </div>
            </div>
         </div>
      </div></div></div>
      
      	<%@ include file="../common/footer.jsp" %>
   </body>
</html>