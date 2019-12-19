<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container2 {

	margin-top: 2%; width : 100%;
}

.tableArea{
width:70%;
padding:1%;
margin-left:5%;
margin-top:1%;
}

table{
 text-align:center;
}

*{
font-size:11pt;
}

#petinfo {
	padding: 1%;
	wdith: 100%;
}

#name {
	width: 50%;
}

#madical, #shit {
	width: 50%;
}

#age {
	width: 30%;
}
</style>
</head>
<body>

		<%@ include file="../common/mpNavibar.jsp"%>

		
<div class="tableArea">
			<div class="tableArea">
					<div class="bootstrap snippet">
						<div class="row">
							<div class="col-sm-10">
							<h1>반려견등록</h1><br>
								<button class="btn btn-info">반려견이름</button>
								<button class="btn btn-info">반려견이름</button>
								<a
									href="<%=request.getContextPath()%>/views/myPage/petSitter/myPetInsert.jsp">추가하기</a>
							</div>
							<br>
						</div>
						<div class="row">
							<div class="col-sm-3">
								<!--left col-->
								<div class="text-center">
									<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
										class="avatar img-circle img-thumbnail" alt="avatar">
								</div>
								</hr>
								<br>
							</div>
							<!--/col-3-->
							<div class="col-sm-9" id="right">
								<div class="tab-content">
									<div class="tab-pane active" id="home">
										<hr>
										<form class="form" action="##" method="post"
											id="registrationForm">
											<div class="form-group">

												<div class="col-xs-6">
													<label for="first_name"><h4>이름</h4></label> <input
														type="text" class="form-control" name="first_name"
														id="name" placeholder="" title="" >
												</div>
											</div>
											<div class="form-group">

												<div class="col-xs-6">
													<label for="last_name"><h4>성별</h4></label><br> <input
														type="radio" disabled>암 <input type="radio"
														>수
												</div>
											</div>

											<div class="form-group">

												<div class="col-xs-6">
													<label for="phone"><h4>예방접종 여부</h4></label> <input
														type="text" class="form-control" name="phone" id="madical"
														placeholder="" title="">
												</div>
											</div>

											<div class="form-group">
												<div class="col-xs-6">
													<label for="mobile"><h4>중성화 여부</h4></label><br> <input
														type="radio" disabled>했음 <input type="radio"
														>안했음

												</div>
											</div>
											<div class="form-group">

												<div class="col-xs-6">
													<label for="mobile"><h4>크기</h4></label><br> <input
														type="radio" disabled>소 <input type="radio"
														disabled>중 <input type="radio">대
												</div>
											</div>
											<div class="form-group">

												<div class="col-xs-6">
													<label for="text"><h4>나이</h4></label> <input type="number"
														class="form-control" id="age" placeholder="" title=""
														>
												</div>
											</div>
											<div class="form-group">

												<div class="col-xs-6">
													<label for="text"><h4>배변훈련 여부</h4></label> <input
														type="text" class="form-control" name="password" id="shit"
														placeholder="" title="">
												</div>
											</div>

											<div class="form-group">
												<div class="col-xs-12">
													<br>
                                              <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>등록하기</button>
                                               <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>리셋</button>

												</div>
											</div>
										</form>

										<hr>

									</div>
									<!--/tab-pane-->


								</div>
								<!--/tab-pane-->
							</div>
							<!--/tab-content-->

						</div>
						<!--/col-9-->
					</div>
					<!--/row-->
					<script
						src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
						integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
						crossorigin="anonymous"></script>


</div></div></div></div></div></div>

</body>
</html>