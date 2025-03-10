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
<%@include file="../Component/AllCss.jsp"%>
<style type="text/css">
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>
</head>
<body>
<%@include file="../Component/Navbar.jsp"%>
	<div class="col-md-12 ">
		<div class="card paint-card">
			<div class="card-body ">
			<p class="fs-3 text-center">Patient Details</p>
			<table class="table">
			<thead>
				
				<tr>
					<th scope="col">Full Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Appointment date</th>
					<th scope="col">Email</th>
					<th scope="col">Mobile No</th>
					<th scope="col">Diseases</th>
					<th scope="col">Doctor Name</th>
					<th scope="col">Address</th>
					<th scope="col">Status</th>	
				</tr>
			</thead>
			<tbody>
			<%
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			DoctorDao dao2=new DoctorDao(DBConnect.getConn());
			List<Appointment> list=dao.getAllAppointment();
			for(Appointment ap:list)
			{
				Doctor d=dao2.getDoctorById(ap.getDoctorId());
			
			
			%>
				<tr>
					<th><%=ap.getFullName() %></th>
					<td><%=ap.getGender() %></td>
					<td><%=ap.getAge() %></td>
					<td><%=ap.getAppoinDate() %></td>
					<td><%=ap.getEmail() %></td>
					<td><%=ap.getPhNO() %></td>
					<td><%=ap.getDiseases() %></td>
					<td><%=d.getFullName() %></td>
					<td><%=ap.getAddress() %></td>
					<td><%=ap.getStatus() %></td>
					</tr>
			<%
			}
			%>
			</tbody>
			</table>
			</div>
			</div>
			</div>
		
</body>
</html>