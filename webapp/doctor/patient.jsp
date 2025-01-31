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
<div class="container p-3">
	<div class="row">
		<div class="col-md-12 ">
		<div class="card paint-card">
			<div class="card-body ">
			<p class="fs-3 text-center">Patient Details</p>
			<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-4">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
			<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-4">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
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
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<%
			Doctor d=(Doctor)session.getAttribute("doctObj");
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			List<Appointment> list=dao.getAllAppointmentByDoctorLogin(d.getId());
			for(Appointment ap:list)
			{%>
				<tr>
					<th><%=ap.getFullName() %></th>
					<td><%=ap.getGender() %></td>
					<td><%=ap.getAge() %></td>
					<td><%=ap.getAppoinDate() %></td>
					<td><%=ap.getEmail() %></td>
					<td><%=ap.getPhNO() %></td>
					<td><%=ap.getDiseases() %></td>
					<td><%=ap.getStatus() %></td>
					<td>
						<%
						if("Pending".equals(ap.getStatus()))
						{%>
							<a href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-success btn-sm">Comment</a>
						<%}
						else{%>
							<a href="#" class="btn btn-success btn-sm disabled">Comment</a>
						<%}
						%>
						
						
						
						
					</td>
				</tr>
			<% 	
			}
			
			%>
				
			</tbody>
			</table>

						
			</div>
		</div>
		</div>
</div>
</div>

</body>
</html>