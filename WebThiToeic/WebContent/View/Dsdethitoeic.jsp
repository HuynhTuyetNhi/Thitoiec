<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách đề thi toeic</title>
	<link href="Template/Frontt/css/bootstrap.css" rel="stylesheet">
    <link href="Template/Frontt/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Template/Frontt/css/style.css" rel="stylesheet"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="Template/style.css">
   
   	<!-- font -->
	<link rel="stylesheet" href="Template/Frontt/font/font-awesome.min.css" />
    
    <script src="Template/Frontt/js/jquery-1.js"></script>
    <script src="Template/Frontt/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    
    	#para1
    	{
    		padding-top:50px;
    	}
    
    </style>
    
</head>
<body>
	<!--HEADER ROW-->
	  	<jsp:include page="Header.jsp"></jsp:include>
	 <!-- /HEADER ROW -->
	 
		<div class="container">
			  <!--PAGE TITLE-->
		
			<div class="row">
				<div class="span12">
						<div class="page-header">
							<h3>
								Danh sách đề thi toeic hoàn chỉnh
							</h3>
							
							<p style="color:red">
								<%--=request.getAttribute("msgloidnlambai")!=null?request.getAttribute("msgloidnlambai"):" "--%> 
							</p>
						</div>
						
				</div>
				
			</div>
		
		  <!-- /. PAGE TITLE-->
		  	
		  	<%
		  		if (request.getAttribute("msgdsdethi")!=null)
		  		{	  		
		  	%>
		  		<div class="row">	
					
						<div class="span6">			
								<div class="media">
									 <p style="color:red">${msgdsdethi}</p>
								</div>						
						</div>	
							
				</div>
		  	<%
		  		}
		  		else
		  		{
		  			
		  			
		  	%>
		  	<%int dem=0; %>	
			<div class="row">
					
					<c:forEach items="${danhsachdethi}" var="list1">
					<c:forEach items="${listLopHoc}" var="list2">
					<c:forEach items="${listMemBer}" var="list3">
					<c:if test="${list1.lop == list2.lopID}">
					<c:if test="${sessionmemberid == list3.memberid}">
					<c:if test="${list1.lop == list3.IDLop}">
					<%dem++;%>
						<div class="span6">			
								<div class="media">
									 <a href="#" class="pull-left"><img src="Template/may-man.jpg" class="media-object" alt='' width="128px" height="128px"/></a>
									<div class="media-body">		 
										<p>
											
											${list1.tendethi}
										</p>
										<a href="Lambaithitoeic?examinationid=${list1.dethiID}" class="btn" type="button">Làm bài thi toeic</a>
									</div>
								</div>						
						</div>
						</c:if>
						
						</c:if>
						</c:if>
						
						</c:forEach>
						</c:forEach>	
					</c:forEach>				
			</div>
			<%if(dem==0)
			{
			%>
				<h3 style="margin-left:10px">Bạn không có đề thi</h3>
				<%
			}
				%>
			<%
		  		}
			%>
			
			
			<!--Pagination-->
			
			<!--/.Pagination-->
			
		</div>
	 
</body>
</html>