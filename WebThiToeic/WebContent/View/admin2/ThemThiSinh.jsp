<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>
	
    <!-- Bootstrap core CSS-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript" 
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <link href="Template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="Template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="Template/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Template/css/sb-admin.css" rel="stylesheet">
     <style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>

  </head>

  <body id="page-top">
	
   <jsp:include page="Header.jsp"></jsp:include>

    <div id="wrapper">

      <!-- Sidebar -->
      <jsp:include page="Menu.jsp"></jsp:include>
<div id="content-wrapper">
   
   <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Thêm sinh viên vào đề thi</div>
            <div class="card-body">	
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm Thành Viên</a>
              <div class="table-responsive">
               <form class="forms-sample" action="ThemThiSinh"  method="post"> 
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Họ và tên</th>
                      <th>Nickname</th>
                      <th>Mật khẩu</th>
                      <th>Giới tính</th>
                      <th>Điện thoại</th>
                      <th>Địa chỉ</th>
                      <th>Lớp học</th>
                      <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>Họ và tên</th>
                      <th>Nickname</th>
                      <th>Mật khẩu</th>
                      <th>Giới tính</th>
                      <th>Điện thoại</th>
                      <th>Địa chỉ</th>
                       <th>Lớp học</th>
                      <th>Thao tác </th>
                    </tr>
                  </tfoot>
                  
                  <tbody>
                 <%int i=0; %>
                  <c:forEach items="${listMemBer}" var="listMemBer">
                   <tr>
                    <%i++;%>
                      <td>${listMemBer.name}</td>
                      <td>${listMemBer.membername}</td>
                      <td>${listMemBer.memberpass}</td>
                      <td>${listMemBer.sex}</td>        
                      <td>${listMemBer.phone}</td>
                      <td>${listMemBer.diaChi}</td>
                      <td>Chưa Có Lớp</td>
              	<td>
                      
                      <input type="checkbox" name="ans[<%=i%>]" value="${listMemBer.memberid}">
                      <input type="hidden" name="idlop" value="<%=request.getAttribute("idlop")%>"> 
                      </td>
                     
                    </tr>
                   
                   </c:forEach> 
                    
                  </tbody>
                 
                </table>
                <input style="margin-left:600px" type="submit" class="btn btn-primary" value="Thêm thí sinh vào lớp"/>
                </form>
              </div>
            </div>
           
          </div>
   </div>
      <!-- /.content-wrapper -->
<jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="Template/vendor/jquery/jquery.min.js"></script>
    <script src="Template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Template/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="Template/vendor/chart.js/Chart.min.js"></script>
    <script src="Template/vendor/datatables/jquery.dataTables.js"></script>
    <script src="Template/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Template/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="Template/js/demo/datatables-demo.js"></script>
    <script src="Template/js/demo/chart-area-demo.js"></script>

  </body>

</html>