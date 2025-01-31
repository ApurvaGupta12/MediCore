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
<p class="text-center fs-3">Doctor Dashboard</p>
<% 
Doctor d=(Doctor)session.getAttribute("doctObj");
DoctorDao dao=new DoctorDao(DBConnect.getConn()); %>
<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-2">
		<div class="card paint-card">
			<div class="card-body text-center text-success">
			<i class="fas fa-user-md fa-3x"></i><br>
			<p class="fs-4 text-center">
			Doctor<br><%=dao.countDoctor() %>
			</p>
			</div>
		</div>
		</div>
		<div class="col-md-4 ">
		<div class="card paint-card">
			<div class="card-body text-center text-success">
			<i class="fas fa-user-md fa-3x"></i><br>
			<p class="fs-4 text-center">
			Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId()) %>
			</p>
			</div>
		</div>
		</div>
	</div>
</div>
</body>
</html>