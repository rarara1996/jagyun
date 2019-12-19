<!-- 관리자▶마켓▶상품 목록 -->
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
#id0{
width:5%;
}
#id1{
width:8%;
}

#id2{
width:10%;
}
#id3{
width:8%;
text-align:center;
}
</style>
</head>
<body>
 	<%@ include file="../common/adminNavibar.jsp" %>
 	<body id="page-top">
  <!-- Page Wrapper -->
  <div id="inner">
        <div class="container-fluid">
          <!-- Page Heading -->

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">판매 관리</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th></th>
                      <th>상품번호</th>
                      <th>카테고리</th>
                      <th>상품명</th>
                      <th>가격</th>
                      <th>상태</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th></th>
                      <th>상품번호</th>
                      <th>카테고리</th>
                      <th>상품명</th>
                      <th>가격</th>
                      <th>상태</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <!-- 상품 리스트 뽑아내기 -->
                  <%for(int i=1; i<100; i++){ %>
                    <tr>
                      <td id="id0"><input type="checkbox"></td>
                      <td id="id1"><%=i %></td>
                      <td id="id2">의류</td>
                      <td >어떤거저떤거</td>
                      <td id="id3">15000 원</td>
                      <td>판매중</td>
                    </tr>
      				<%} %>
                  </tbody>
                </table>
              </div>
              <!-- 상품 상태 변경 : 판매중 / 품절 -->
              <form>
	              <label>상태 변경 : </label>
	              <select>
					 <option value="ok">판매중</option>
					 <option value="no">품절</option>
	 				 <option selected>---</option>
	 			  </select>
					<input type="submit" value="변경">
					<button>상품 수정</button>
			  </form>

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