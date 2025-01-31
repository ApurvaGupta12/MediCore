<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<%@include file="Component/AllCss.jsp"%>

<style type="text/css">
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>

</head>
<body>
	<%@include file="Component/Navbar.jsp"%>
	
	
	
	
	<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Img/Img3.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="Img/Img2.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="Img/Img4.png" class="d-block w-100" alt="..." height="600px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



<div class="container p-3">
	<p class="text-center fs-1"><b>Key Features of our Hospital</b></p>
	<div class="row">
		<div class="col-md-8 p-5">
			<div class="row">
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-3">100% Safety</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								voluptatem,inventore</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-3">Clean Environment</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								voluptatem,inventore</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 mt-2">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-3">Friendly Doctors</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								voluptatem,inventore</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 mt-2">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-3">Medical Research</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								voluptatem,inventore</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
		<div class="col-md-4">
			<img alt="" src="Img/Img6.jpg" height="450px">
		</div>
		
	</div>
</div>

<hr>

<div class="container p-2">
	<p class="text-center fs-2 "><b>Our Team</b></p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Img/D3.jpg" width="280px" height="300px">
						<p class="fw-bold fs-4">Samuani Simi</p>
						<p class="fs-6">(CEO and Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Img/D1.jpg" width="280px" height="300px">
						<p class="fw-bold fs-4">Dr. Siva Kumar</p>
						<p class="fs-6">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Img/D4.jpg" width="280px" height="300px">
						<p class="fw-bold fs-4">Dr. Niuise Paule</p>
						<p class="fs-6">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Img/D2.jpg" width="280px" height="300px">
						<p class="fw-bold fs-4">Dr. Mathue Samuel</p>
						<p class="fs-6">(Chief Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
				
	
	
	

<%@  include file="Component/Footer.jsp" %>		
	
</body>
</html>