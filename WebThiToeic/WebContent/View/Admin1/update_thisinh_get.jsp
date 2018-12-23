<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%ResultSet rs=(ResultSet)request.getAttribute("member"); %>
 <form action="Update_User_Set" method="POST" id="search_form">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Sửa thông tin thí sinh</h4>
      </div>
      <input type="hidden" name="ismemberID"  value="<%=rs.getString("MemberID")%>">
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="member name" required="required" autofocus="autofocus"
       name="isMemberName" value="<%=rs.getString("MemberName")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="memberpass" required="required" autofocus="autofocus"
       name="isMemberPass"value="<%=rs.getString("MemberPass")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Họ và tên" required="required" autofocus="autofocus"
       name="isName"value="<%=rs.getString("Name")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Ngày sinh" required="required" autofocus="autofocus"
       name="isNgaySinh"value="<%=rs.getString("NgaySinh")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Giới tính" required="required" autofocus="autofocus"
       name="isGioiTinh"value="<%=rs.getString("GioiTinh")%>" >
      </div>
       <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Địa chỉ" required="required" autofocus="autofocus"
       name="isDiaChi"value="<%=rs.getString("DiaChi")%>" >
      </div>
       <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Số điện thoại" required="required" autofocus="autofocus"
       name="isPhone"value="<%=rs.getString("Phone")%>" >
      </div>
     
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Sửa</button>
      </div>
      
    </div>
    </form>
    <script type="text/javascript">
  function form_submit() {
    document.getElementById("search_form").submit();
   }    
  </script>