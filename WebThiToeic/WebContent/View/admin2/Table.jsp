<%@page import="BEAN.Loaicauhoi"%>
<%@page import="DAO.CauHoiDAO"%>
<%@page import="BEAN.CauHoi"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%if(request.getAttribute("page").equals("1"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý thành viên</div>
            <div class="card-body">	
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm Thành Viên</a>
            <label><%=request.getAttribute("msgaddmember")!=null?request.getAttribute("msgaddmember"):" "%></label>
             <label><%=request.getAttribute("msgdeleteuser")!=null?request.getAttribute("msgdeleteuser"):" "%></label>
             <label><%=request.getAttribute("msgupdatemember")!=null?request.getAttribute("msgupdatemember"):" "%></label>
             
              <div class="table-responsive">
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
                  <c:forEach items="${listLopHoc}" var="listLopHoc">
                  <c:forEach items="${listMemBer}" var="listMemBer">
                  <c:if test="${listLopHoc.lopID == listMemBer.IDLop}">
                   <tr>
                    
                      <td>${listMemBer.name}</td>
                      <td>${listMemBer.membername}</td>
                      <td>${listMemBer.memberpass}</td>
                      <td>${listMemBer.sex}</td>        
                      <td>${listMemBer.phone}</td>
                      <td>${listMemBer.diaChi}</td>
                      
                   	  <td>${listLopHoc.tenLop}</td>
                   	  <td>
                      <a class="btn btn-danger triggerRemove" href="DeleteUser?idmember=${listMemBer.memberid}" style="width:100px">delete</a>
                     
                       <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id="${listMemBer.memberid}">Update</a> </td>
                    </tr>
                   </c:if>
                   </c:forEach> 
                   </c:forEach>
                   
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
         <!-- modal xóa -->
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa thành viên</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>

<!-- htmt thêm -->
  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="a">
  <form name="paymentitrform" id="paymentitrform" class="payment" method="POST"
                    action="InsertUser">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Thêm Lớp Học</h4>
      </div>
      <div class="modal-body">
     
                            <div class="form-group">
                                <label>Tên thí sinh</label> <input id="ndHoTen"
                                    class="form-control" placeholder="Tên thí sinh" name="isName">
                            </div>
                            <div class="form-group">
                                <label>Tên đăng nhập </label> <input id="NgaySinh"
                                    class="form-control" placeholder="Tên đăng nhập" name="isMemberName">
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label> <input
                                    
							class="form-control" placeholder="Mật khẩu" name="isMemberPass">
                            </div>
                            <div class="form-group">
                                <label>Ngày sinh</label> <input type="date"
                                    class="form-control" placeholder="Ngày sinh" name="isNgaySinh">

                            </div>
                            <div class="form-group">
                             <label>Giới tính</label>
                       
                           
             				 <select name="isGioiTinh" style="width:400px;height:36px;" >
				              <option value="Nam">Nam</option>
				              <option value="Nữ">Nữ</option>
				              </select>
				             
                               
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label> <input style="height=100px"
                                    class="form-control" placeholder="Địa chỉ" name="isDiaChi">

                            </div>
                            <div class="form-group">
                                <label>Số điện thoại</label> <input style="height=100px"
                                    class="form-control" placeholder="Số điện thoại" name="isSoDienThoai">
                            </div>   
      </div>
       					<div class="modal-footer">
       					 <input type="hidden" name="planamount" id="planamount" value="0">
                                
                            <button class="btn btn-success" name="button1" >Thêm</button>
                            
                        </div>
                         </form>
                          <button type="button" class="btn btn-default" data-dismiss="modal" style="width:70px;margin-top:-54px;margin-left:340px">Cancel</button>
    </div>
   
   
  </div>
</div>
<!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
 
  </div>
</div>
							   
												 														
					<!-- Xóa -->
						
<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>						 			
						<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_User_Get?idmember="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
					function form_submit() {
					    document.getElementById("search_form").submit();
					   }   
					</script>
					
					
<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <%} %>
 
   <%if(request.getAttribute("page").equals("2"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý lớp học</div>
            <div class="card-body">
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm Lớp Học</a>
            
            <label><%=request.getAttribute("msgdeletelop")!=null?request.getAttribute("msgdeletelop"):" "%></label>
            <label><%=request.getAttribute("msgaddlop")!=null?request.getAttribute("msgaddlop"):" "%></label>
            <label><%=request.getAttribute("msgupdatelop")!=null?request.getAttribute("msgupdatelop"):" "%></label>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID Lớp Học</th>
                      <th>Tên Lớp Học</th>
                      <th>Tên giảng viên</th>
                     <th>Xóa</th>
                     <th>Update </th>
                     <th>Thêm Thí Sinh </th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                    <th>ID Lớp Học</th>
                      <th>Tên Lớp Học</th>
                      <th>Tên giảng viên</th>
                     <th>Xóa</th>
                     <th>Update </th>
                     <th>Thêm Thí Sinh </th>

                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listLopHoc}" var="listLopHoc">
                    <tr>
                      <td>${listLopHoc.lopID}</td>
                       <td>${listLopHoc.tenLop}</td>
                        <td>${listLopHoc.tenGiangVien}</td>
                     
              	<td>
              	<a class="btn btn-danger triggerRemove" href="DeleteLop?idlop=${listLopHoc.lopID}" style="width:100px">Xóa</a></td>
               <td> <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id="${listLopHoc.lopID}">Update</a> </td>
               <td> <a class="btn btn-danger " style="width:150px" href="ThemThiSinh?idlop=${listLopHoc.lopID}">Thêm thí sinh</a> </td>
                      
                     
                    </tr>
                   
                   </c:forEach> 
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
          
          <!-- modal xóa -->
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa lớp học</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>

<!-- modal add -->
        
  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="a">
  <form name="paymentitrform" id="paymentitrform" class="payment" method="get"
                    action="InserLop">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Thêm Lớp Học</h4>
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên lớp học" required="required" autofocus="autofocus" name="isLopHoc" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên giảng viên" required="required" autofocus="autofocus" name="isTenGiangVien" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Thêm</button>
      </div>
    </div>
    </form>
  </div>
</div>					
<!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
 
  </div>
</div>								   
<!-- Xóa -->
						
<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>						 			
						<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_Lop_Get?idlop="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
					function form_submit() {
					    document.getElementById("search_form").submit();
					   }   
					</script>
					
					
<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <%} %>  
 
  <%if(request.getAttribute("page").equals("3"))
    {
	  
	  int categoryID=1;
	  if(request.getParameter("category")!=null)
	  {
	  	categoryID=Integer.parseInt(request.getParameter("category"));
	  }
	  
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý câu hỏi</div>
            <div class="card-body">
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm câu hỏi</a>
            <label><%=request.getAttribute("msgdeletecauhoi")!=null?request.getAttribute("msgdeletecauhoi"):" "%></label>
            <label><%=request.getAttribute("msgaddcauhoi")!=null?request.getAttribute("msgaddcauhoi"):" "%></label>
            <label><%=request.getAttribute("msgupdatecauhoi")!=null?request.getAttribute("msgupdatecauhoi"):" "%></label>
              <form action="InsertCauHoiExcel" method="POST" enctype="multipart/form-data">
                     <input type="file" name="myFile" multiple><br><br>
 					 <input style="margin-top:-5px" type="submit">
					</form>
				<div class="dropdown">
				  <button class="dropbtn" style="margin-left:0px;height:40px;margin-top:5px;margin-bottom:5px">Loại câu hỏi</button>
				  <div class="dropdown-content">
				    <%
						for(Loaicauhoi c:CauHoiDAO.Displayloaicauhoi())
						{
					%>
				
				<a href="CauHoiforward?pageid=3&category=<%=c.getMaloaicauhoi()%>"><%=c.getTenloaicauhoi()%></a>
				
				
				<%} %>
				  </div>
				</div>
             
              <div class="table-responsive">
              
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Tên câu hỏi</th>
                      <th> Đáp án A</th>
                      <th> Đáp án B</th>
                      <th> Đáp án C</th>
                      <th> Đáp án D</th>
                      <th> Đáp án</th>
                      <th>Loại câu hỏi</th>
                      <th>Xóa</th>
                      <th>Update</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Tên câu hỏi</th>
                      <th> Đáp án A</th>
                      <th> Đáp án B</th>
                      <th> Đáp án C</th>
                      <th> Đáp án D</th>
                      <th> Đáp án</th>
                      <th>Loại câu hỏi</th>
                      <th>Xóa</th>
                      <th>Update</th>
                    </tr>
                  </tfoot>
                  <tbody>
                   <%
                    if(request.getParameter("category")==null)
					{
						for(Loaicauhoi c:CauHoiDAO.Displayloaicauhoi())
						{
						for(CauHoi p : CauHoiDAO.DisplayCauHoibyloaicauhoi(c.getMaloaicauhoi()))
						{
						%>
                     <tr>			                       
			                        <td>
			                        <%=p.getTenCauHoi()%>
			                        </td>
			                        <td>
			                        <%=p.getDapAnA() %>
			                        </td>
			                        <td>
			                       <%=p.getDapAnB()%>
			                        </td>
			                      	<td>
			                      <%=p.getDapAnC()%>
			                      	</td>
			                      	<td>
			                      	 	<%=p.getDapAnD()%>
			                      	</td>             
			                      	<td>
			                     	<%=p.getDapAn() %>
			                      	</td>
			                      	<td>
			                      <%=c.getTenloaicauhoi()%>
			                      	</td>
			                        <td>
			                        <a class="btn btn-danger triggerRemove" href="DeleteCauHoi?idCauHoi=<%=p.getCauHoiID()%>" style="width:100px">delete</a></td>
               					<td>	 <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id=<%=p.getCauHoiID()%>>Update</a> </td>
			                      </tr> 
               <%
						}
					}
						}
						else{
							for(CauHoi p : CauHoiDAO.DisplayCauHoibyloaicauhoi(categoryID))
							{
							%>
							
							
							          <tr>			                       
			                        <td>
			                        <%=p.getTenCauHoi()%>
			                        </td>
			                        <td>
			                        <%=p.getDapAnA() %>
			                        </td>
			                        <td>
			                       <%=p.getDapAnB()%>
			                        </td>
			                      	<td>
			                      <%=p.getDapAnC()%>
			                      	</td>
			                      	<td>
			                      	 	<%=p.getDapAnD()%>
			                      	</td>             
			                      	<td>
			                     	<%=p.getDapAn() %>
			                      	</td>
			                      	<td>
			                      <%=p.getLoaiCauID()%>
			                      	</td>
			                        <td>
			                        <a class="btn btn-danger triggerRemove" href="DeleteCauHoi?idCauHoi=<%=p.getCauHoiID()%>" style="width:100px">delete</a></td>
               					<td>	 <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id=<%=p.getCauHoiID()%>>Update</a> </td>
			                      </tr> 
						<%
						}
						
							}
						%>     
                    
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
         <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa Câu Hỏi</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>	
<!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">

  </div>
</div>		


<!-- modal add -->
        
  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="a">
  <form name="paymentitrform" id="paymentitrform" class="payment" method="POST"
                    action="InsertCauHoi">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Thêm câu hỏi</h4>
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên câu hỏi" required="required" autofocus="autofocus" name="isTenCauHoi" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án A" required="required" autofocus="autofocus" name="isDapAnA" >
      </div>
       <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án B" required="required" autofocus="autofocus" name="isDapAnB" >
      </div>
       <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án C" required="required" autofocus="autofocus" name="isDapAnC" >
      </div>
       <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án D" required="required" autofocus="autofocus" name="isDapAnD" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án " required="required" autofocus="autofocus" name="isDapAn" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Loại câu ID" required="required" autofocus="autofocus" name="isLoaiCau" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Thêm</button>
      </div>
    </div>
    </form>
  </div>
</div>					
			<!-- modal xoa -->									 			
												
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>

<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_CauHoi_Get?IDCauHoi="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
					function form_submit() {
					    document.getElementById("search_form").submit();
					   }   
					</script>	



<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <%} %>
 
  <%if(request.getAttribute("page").equals("4"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý đề thi</div>
            <div class="card-body">	
            <a class="btn btn-primary triggeradd"  style="width:200px;margin-bottom:10px">Thêm đề thi</a>
             <label><%=request.getAttribute("msgdeletedethi")!=null?request.getAttribute("msgdeletedethi"):" "%></label>
            <label><%=request.getAttribute("msgadddethi")!=null?request.getAttribute("msgadddethi"):" "%></label>
            <label><%=request.getAttribute("msgupdatedethi")!=null?request.getAttribute("msgupdatedethi"):" "%></label>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      	<th>Tên đề thi</th>
                        <th>Số câu dễ </th>
                        <th>Số câu trung bình</th>
                        <th>Số câu khó</th>
                        <th>Thời gian làm bài</th>
                        <th>Thời gian mở đề</th>
                        <th>Lớp</th>
                        <th>Xem</th>
                        <th>Xóa</th>
                        <th>Update</th>
                        
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
 						<th>Tên đề thi</th>
                        <th>Số câu dễ </th>
                        <th>Số câu trung bình</th>
                        <th>Số câu khó</th>
                        <th>Thời gian làm bài</th>
                        <th>Thời gian mở đề</th>
                        <th>Lớp</th>
                         <th>Xem</th>
                        <th>Xóa</th>
                        <th>Update</th>
                    </tr>
                  </tfoot>
                  <tbody>
                 <c:forEach items="${listdethi}" var="listdethi" >
                    
			                      <tr>			                       
			                        <td>${listdethi.tendethi}</td>
			                        <td>${listdethi.socaude}</td>
			                        <td>${listdethi.socautrungbinh}</td>
			                      	<td>${listdethi.socaukho}</td>
			                      	<td>${listdethi.thoigianmode}</td>             
			                      	<td>${listdethi.thoigianlambai}</td>
			                      	<td>${listdethi.tendethi}<td>
			                        <a href="XemDeThi?iddethi=${listdethi.dethiID}">
						<button class="btn btn-success" data-toggle="modal"
								data-target="#myModal1" name="button1">Xem</button></a>
						<td>
                      <a class="btn btn-danger triggerRemove" href="DeleteDeThi?iddethi=${listdethi.dethiID}" style="width:100px">delete</a>
                      </td>		
						<td><a class="btn btn-danger triggerupdate" style="width:100px" 
						data-product-id="${listdethi.dethiID}">Update</a> </td>
			                      </tr> 
             
                   </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
  <!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
 
  </div>
</div>	      
<!-- modal add -->
        
  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="a">
  <form name="paymentitrform1" id="paymentitrform1" class="payment" method="POST"
                    action="InsertDeThi">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Thêm đề thi</h4>
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên đề thi" required="required" autofocus="autofocus" name="isdethi" >
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
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Thêm</button>
      </div>
    </div>
    </form>
  </div>
</div>	
          <!-- modal xóa -->
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa đề thi</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>								   
			
			<!-- Xóa -->
						
<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>										 														
	<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform1").submit();
} 
</script>


<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_DeThi_Get?iddethi="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
				
					</script>				
 <%} %>
 
 <!-- Quản lý kết quả thi -->
 <%if(request.getAttribute("page").equals("5"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý kết quả thi</div>
            <div class="card-body">	
            
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Số câu đúng</th>
                      <th>Số câu sai</th>
                      <th>thời gian làm</th>
                      
                      <th>IDdethi</th>
                      <th>idmember làm</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Số câu đúng</th>
                      <th>Số câu sai</th>
                      <th>thời gian làm</th>
                      
                      <th>IDdethi</th>
                      <th>idmember làm</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listResult}" var="listResult">
                  <tr>
                <td>${listResult.correctanswernum}</td>
                      <td>${listResult.incorrectanswernum}</td>
                      <td>${listResult.time}</td>
                      <td>${listResult.examinationid}</td>
                      <td>${listResult.memberid}</td>
                    
                   </tr>
                   </c:forEach> 
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
         
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa hóa đơn</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>								   
												 														
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>	
 <%} %>
 

 
  