<%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist,com.entity.User,com.dao.DoctorDao,com.entity.Doctor,com.dao.AppointmentDao,com.entity.Appointment,  java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Component/AllCss.jsp"%>
<style type="text/css">
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
	.backImg{
	background: Linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
	url("Img/Back.jpg");
	height: 40vh;
	width:100%;
	background-size:cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="Component/Navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-sccess">Appointment List</p>
						<table class="table">
						<thead>
							<tr>
								<th scope="col">Full Name</th>
								<th scope="col">Gender</th>
								<th scope="col">Age</th>
								<th scope="col">Appoint date</th>
								<th scope="col">Diseases</th>
								<th scope="col">Doctor Name</th>
								<th scope="col">Status</th>
							</tr>
						</thead>
						<tbody>
							<% 
								User user=(User)session.getAttribute("userObj");
								AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
								DoctorDao dao2=new DoctorDao(DBConnect.getConn());
								List<Appointment> list=dao.getAllAppointmentByLoginUser(user.getId());
								for(Appointment ap:list)
								{
									Doctor d=dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
								<th><%=ap.getFullName() %></th>
								<td><%=ap.getGender() %></td>
								<td><%=ap.getAge() %></td>
								<td><%=ap.getAppoinDate() %></td>
								<td><%=ap.getDiseases() %></td>
								<td><%=d.getFullName() %></td>
								<td><%
										if("Pending".equals(ap.getStatus()))
										{%>
											<a href="#" class="btn btn-sm btn-warning">Pending</a>
										<%}
										else{%>
											<%=ap.getStatus() %>
										<%}
								
								%></td> 
								</tr>
								<%
									
								}
							%>
							
						</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-3 p-3">
				<img alt="" src="Img/Doct1.jpg">
			</div>
			
		</div>
	
	</div>

</body>
</html>