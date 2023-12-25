<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">

<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">ADD BOOKS</h4>

<c:if test="${not empty succmsg }">
<p class="text-center text-success">${succmsg}</p>
<c:remove var="succmsg" scope="session"></c:remove>
</c:if>

<c:if test="${not empty failmsg }">
<p class="text-center text-success">${failmsg}</p>
<c:remove var="succmsg" scope="session"></c:remove>
</c:if>

<form action="../addbooks" method="post" enctype="multipart/form-data">


<div class="mb-3">
<label for="exampleInputEmail1" class="form-label">Book Name*
		</label> <input type="text" class="form-control"
		id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="bname">
		</div>
		
	<div class="mb-3">
		<label for="exampleInputPhonenumber" class="form-label">Author Name*
	</label> <input type="text" class="form-control"
			id="examplephonenumber" required="required" name="aName">
		</div>
		
	<div class="mb-3">
	<label for="exampleInputPassword1" class="form-label">Price*</label>
		<input type="number" class="form-control"
			id="exampleInputPassword1" required="required" name="price">
	</div>
	
		<div class="form-group">
		<label for="inputstate">Book Categories</label>
		<select id="inputState" name="bcate" class="form-control">
		<option selected>--select--</option>
		<option>New book</option>
		</select>
		
		
		</div>
		
		<div class="form-group">
		<label for="inputstate">Book Status</label>
		<select id="inputState" name="bstatus" class="form-control">
		<option selected>--select--</option>
		<option>Active</option>
		<option>InActive</option>
		</select>
		</div>
		
		<div class="form-group">
		<label for="inputstate">Upload Photo</label>
		<input type="file" class="form-control"
			id="exampleInputPassword1" required="required" name="bookimg">
		
	<button type="submit" class="btn btn-primary">Add</button>
</div>



</form>

</div>
</div>
</div>

</div></div>
<div style="margin-top:40px">
<%@include file="footer.jsp"%>
</div>
</body>
</html>