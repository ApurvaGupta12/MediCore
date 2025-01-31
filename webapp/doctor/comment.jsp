<%@ page import="com.dao.SpecialistDao,com.entity.Appointment, com.db.DBConnect,com.dao.AppointmentDao, com.entity.Specalist,com.dao.DoctorDao,com.entity.Doctor,  java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../Component/AllCss.jsp" %>
</head>
<body>
<c:if test="${empty doctObj }">
		<c:redirect url="../Doctor.jsp">
	</c:redirect>
	</c:if>
<%@include file="Navbar.jsp"%>
<div class="container-fluid backImg p-5">
	<p class="text-center fs-2 text-white"></p>
</div>
<div class="container p-3">
	<div class="row">
		<div class="col-md-6 offset-md-3 ">
		<div class="card paint-card">
			<div class="card-body ">
			<p class="fs-4 text-center">Patient Comment</p>
			<%int id=Integer.parseInt(request.getParameter("id"));
			 AppointmentDao dao= new AppointmentDao(DBConnect.getConn());
			 Appointment ap=dao.getAppointmentById(id);
			
			%>
			
			<form class="row" action="../updateStatus" method="post">

							<div class="col-md-6">
								<label >Patient Name</label> 
								<input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
							</div>

							<div class="col-md-6">
								<label >Age</label> 
								<input type="text" value="<%=ap.getAge() %>" readonly class="form-control">
							</div>
							<div class="col-md-6">
								<br><label >Mobile No</label> 
								<input type="text" readonly value="<%=ap.getPhNO() %>" class="form-control">
							</div>
							
							<div class="col-md-6">
								<br><label >Diseases</label> 
								<input type="text" readonly value="<%=ap.getDiseases() %>"  class="form-control">
							</div>
							
							<div class="col-md-12">
								<br><label >Comment</label> 
								<textarea required name="comm" class="form-control" row="3" cols=""></textarea>
							</div>
							<input type="hidden" name="id" value="<%=ap.getId() %>">
							<input type="hidden" name="did" value="<%=ap.getDoctorId() %>">

							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>

						</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>