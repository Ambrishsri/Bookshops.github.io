<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body style="background-color:#fof1f2">
<%@include file="all_component/navbar.jsp" %>

<div class="container p-2">
<div class="row mt-2">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h3 class="text-center">Login</h3>

<c:if test="${not empty failmsg }">
<h5 class="text-center text-danger">${failmsg}</h5>
<c:remove var="failmsg" scope="session" />
	</c:if>
						

<form action="login" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
    <div id="emailHelp" class="form-text" ></div>
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  <div class="text-center">
  
   <button type="submit" class="btn btn-primary">Login</button><br>
  <a href="register.jsp">Create Account</a>
  </div>
 
</form>


</div>
</div>
</div>
</div>
</div>



</body>
</html>