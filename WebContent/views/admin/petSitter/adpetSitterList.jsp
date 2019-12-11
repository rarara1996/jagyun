<!-- 관리자▶펫시터 서비스▶펫시터 리스트-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="<%= request.getContextPath() %>/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="<%= request.getContextPath() %>/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
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
  <div id="inner">
        <div class="container-fluid">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">펫시터 관리</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th></th>
                      <th>ID</th>
                      <th>이름</th>
                      <th>이번달 스케줄</th>
                      <th>지원 폼 보기</th>
                      <th>승인여부</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th></th>
                      <th>ID</th>
                      <th>이름</th>
                      <th>이번달 스케줄</th>
                      <th>지원 폼 보기</th>
                      <th>승인여부</th>
                    </tr>
                  </tfoot>
                  <!-- 펫시터 목록 뽑아내기 -->
                  <tbody>
                  <%for(int i=0; i<100; i++){ %>
                    <tr>
                      <td><input type="checkbox"></td>
                      <td>cccaa1111</td>
                      <td>유수완</td>
                      <td><button>보기</button></td>
                      <td><button>보기</button></td>
                      <td>Y</td>
                    </tr>
      				<%} %>
                  </tbody>
                </table>
              </div>
               <!-- 펫시터 해고하기, 안내 메일 발송 -->
             	 <button>해고하기</button>
            	 <button>메일 발송하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/js/sb-admin-2.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/admin/js/demo/datatables-demo.js"></script>

</body>
</html>