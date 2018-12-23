<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%ResultSet rs=(ResultSet)request.getAttribute("dethi"); %>
 <form action="Update_DeThi_Set" method="POST" id="search_form">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Sửa thông tin đề thi</h4>
      </div>
      <input type="hidden" name="isdethiID"  value="<%=rs.getString("dethiID")%>">
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên lớp học" required="required" autofocus="autofocus"
       name="isdethi" value="<%=rs.getString("tendethi")%>" >
      </div>
      <div class="modal-body">
      <label for="exampleInputCity1">Số Câu Dễ </label>
				      <select class="form-control" id="sel1" name="issocaude" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
      </div>
      <div class="modal-body">
     <label for="exampleInputCity1">Số Câu Trung Bình </label>
				      <select class="form-control" id="sel1" name="issocautrungbinh" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
      </div>
      <div class="modal-body">
      <label for="exampleInputCity1">Số Câu Khó </label>
				      <select class="form-control" id="sel1" name="issocaukho" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
      </div>
      <div class="modal-body">
      <label for="exampleInputCity1">Thời gian mở đề </label>
				      <input type="date" class="form-control" id="exampleInputCity1" placeholder="Location" name="isthoigianmode"
                       style="width:280px">
      </div>
      <div class="modal-body">
      <label for="exampleInputCity1">Thời gian làm bài </label>
				      <select class="form-control" id="sel1" name="isthoigianlambai" style="width:90px">
				        <option>1000</option>
				        <option>2000</option>
				        <option>3000</option>
				        <option>4000</option>
				      </select>
      </div>
      <div class="modal-body">
      <label for="exampleInputCity1">Lớp Học </label>
				      <select class="form-control" id="sel1" name="isloplambai" style="width:150px">
				        <option>Anh Văn 1</option>
				        <option>Anh Văn 2</option>
				        <option>Anh Văn 3</option>
				        <option>Anh Văn 4</option>
				        <option>Anh Văn 5</option>
				      </select>
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