
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<div class="container-fluid" style="height:10px;background-color:#303f9f"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-primary">
			<h3><i class="fa-solid fa-book"></i>BOOKSHOP</h3>

		</div>

		<div class="col-md-6">

			<form class="form-inline my-2 ">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 " type="submit">Search</button>
			</form>
		</div>

		<div class="col-md-3">
		
		<c:if test="${not empty userobj }" >
		<a href="login.jsp" class="btn-btn-success"><i class="fa-solid fa-right-to-bracket"></i>${userobj.name }</a>
			<a href="../login.jsp"
				class="btn-btn-secondart ml-100px"><i class="fa-solid fa-right-to-bracket"></i>Logout</a>
			 </c:if>
			
			
			 
			 <c:if test="${ empty userobj }" >
	
		
			<a href="../login.jsp" class="btn-btn-success"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
			 
			<a href="../register.jsp"
				class="btn-btn-primary"><i class="fa-solid fa-user-plus"></i>Register</a>
			 </c:if>
		</div>
	</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item active"><a class="nav-link active"
					aria-current="page" href="home.jsp">Home</a></li>

				</ul>

			
			</form>
		</div>
	</div>
</nav>