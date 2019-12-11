<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="<%= request.getContextPath() %>/resources/admin/css/sb-admin-2.min.css"
	rel="stylesheet">
<style>
#dogimg {
	width: 100%;
	height: 100%;
}

#inner {
	margin-top: 10%;
}
</style>
</head>
<body>


	<%@ include file="../common/menubar.jsp"%>

	<div class="container">
	<div id="inner">
		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block">
							
								<img
									src="<%= request.getContextPath() %>/resources/image/dog10.jpg"
									id="dogimg">
							</div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인</h1>
									</div>
									<form class="user">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												id="exampleInputEmail" aria-describedby="emailHelp"
												placeholder="아이디를 입력하세요">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="exampleInputPassword" placeholder="비밀번호를 입력하세요">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">저장하기</label>
											</div>
										</div>
										<a href="index.html"
											class="btn btn-primary btn-user btn-block"> Login </a>
										<hr>
										<a href="index.html" class="btn btn-google btn-user btn-block">
											소셜로그인할수있으면.. </a>

									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgot-password.html">비밀번호 찾기</a>
										&nbsp; &nbsp;&nbsp;&nbsp; <a class="small"
											href="<%= request.getContextPath() %>/views/member/memberJoin.jsp">회원가입</a>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
</div></div></div>
	<!-- Bootstrap core JavaScript-->
	<script
		src="<%=request.getContextPath()%>/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<%=request.getContextPath()%>/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="<%= request.getContextPath() %>/resources/admin/js/sb-admin-2.min.js"></script>
</body>
</html>