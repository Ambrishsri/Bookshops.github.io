<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>BookShop Register</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #fof1f2">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						
						<c:if test="${not empty succmsg }">
						<p class="text-center text-success">${succmsg}</p>
						<c:remove var="succmsg" scope="session"></c:remove>
						</c:if>
						
						<c:if test="${not empty failmsg }">
						<p class="text-center text-danger">${failmsg}</p>
						<c:remove var="failmsg " scope="session"></c:remove>
						</c:if>
						
						
						<form action="register" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									full name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="name">
								<div id="emailHelp" class="form-text"></div>
							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="email">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPhonenumber" class="form-label">Phone
									number</label> <input type="number" class="form-control"
									id="examplephonenumber" required="required" name="phno">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" name="check"> <label
									class="form-check-label" for="exampleCheck1">Agree
									terms and conditions</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>