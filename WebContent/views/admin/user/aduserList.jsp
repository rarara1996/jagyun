<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="<%= request.getContextPath() %>/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%= request.getContextPath() %>/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="<%= request.getContextPath() %>/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<style>
#wrapper, #content-wrapper, .container-fluid.card shadow mb-4,.card-header py-3{
width:100%;}
#inner{
margin-top:2%;
width:100%;
}
</style>
</head>
<body>
 	<%@ include file="../../common/menubar.jsp" %>
 	<%@ include file="../common/adminNavibar.jsp" %>
 	<body id="page-top">
  <!-- Page Wrapper -->
  <div id="inner">
        <div class="container-fluid">

          <!-- Page Heading -->

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 관리</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                    <th></th>
                      <th>ID</th>
                      <th>이름</th>
                      <th>성별</th>
                      <th>주소</th>
                      <th>이메일</th>
                      <th>반려견 수</th>
                      <th>전화번호</th>
                      <th>생년월일</th>
                      <th>탈퇴여부</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th></th>
                      <th>ID</th>
                      <th>이름</th>
                      <th>성별</th>
                      <th>주소</th>
                      <th>이메일</th>
                      <th>반려견 수</th>
                      <th>전화번호</th>
                      <th>생년월일</th>
                      <th>탈퇴여부</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <%for(int i=0; i<100; i++){ %>
                    <tr>
                    <td><input type="checkbox"></td>
                      <td>ccaa1111</td>
                      <td>유수완</td>
                      <td>여</td>
                      <td>어디어디어디어디어디어디</td>
                      <td>tndhks123@nate.com</td>
                      <td>1</td>
                      <td>01048951214</td>
                      <td>19950403</td>
                      <td>N</td>
                    </tr>

      				<%} %>
                  </tbody>
                </table>
              </div>
                <form>
              <label>회원 탈퇴여부 변경 : </label>
              <select>
				 <option value="ok">Y(탈퇴됨)</option>
				 <option value="no">N(정상)</option>
 				 <option selected>---</option>
 			  </select>
				<input type="submit" value="변경">
				&nbsp;&nbsp;<button>메일발송하기</button>
			  </form>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->

      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>

  <!-- Page level plugins -->
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<%= request.getContextPath() %>/resources/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="<%= request.getContextPath() %>/resources/admin/js/demo/datatables-demo.js"></script>
  
</body>
</html>