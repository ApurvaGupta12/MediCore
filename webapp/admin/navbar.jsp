<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark  bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="Index.jsp"><i
			class="fa-solid fa-house-medical"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<!-- Admin page --> <a class="nav-link active" aria-current="page"
					href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i>
						HOME</a>
				</li>

				<!-- Doctor page -->

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="doctor.jsp">DOCTOR</a></li>
					
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_doctor.jsp">VIEW DOCTOR</a></li>
				

				<!-- PATIENT page -->

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="APatient.jsp">PATIENT</a></li>


		<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">Admin
						</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="../AdminLout">Logout</a></li>
					</ul>
		</div>



			</ul>

		</div>
	</div>
</nav>