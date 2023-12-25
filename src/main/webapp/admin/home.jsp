<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss.jsp" %>
<style type="text/css">
a{
text-decoration: none;
color: black;
}
a:hover {
	text-decoration: none;
color: black;
}
</style>
</head>
<body style="background-color:#f0f2f2">
<%@include file="navbar.jsp" %>

<div class="container">
<div class="row">

<div class="col-md-3">
<a href="allbook.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-plus fa-3x text-secondary"></i><br>
<h4>ALL BOOKS</h4>
---------------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="addbook.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-book fa-3x text-danger"></i><br>
<h4>ADD BOOKS</h4>
---------------
</div>
</div>
</a>
</div>


<div class="col-md-3">
<a href="order.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-box fa-3x text-warning"></i><br>
<h4>ORDER</h4>
---------------
</div>
</div>
</a>
</div>



<div class="col-md-3">
<a href=".jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-arrow-right-from-bracket fa-3x text-primary"></i><br>
<h4>LOGUT</h4>
---------------
</div></div>
</div>

</div>
</div>
<div style="margin-top:130px">
<%@include file="footer.jsp"%>
</div>


</body>
</html>