<%@page import="DAO.BookDAOImpl"%>
<%@page import="DB.DB"%>
<%@page import="entity.BOOKDETAILS"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
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
<h4 class="text-center">EDIT BOOKS</h4>


<%
int id=Integer.parseInt(request.getParameter("id"));
BookDAOImpl dao=new BookDAOImpl(DB.getConn());
BOOKDETAILS b=dao.getBookbyid(id);
%>
<form action="../editbooks" method="post">
<input type="hidden" name="id" value="<%=b.getBookid() %>">

<div class="mb-3">
<label for="exampleInputEmail1" class="form-label">Book Name*
		</label> <input type="text" class="form-control"
		id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="bname" value=<%=b.getBookname() %>>
		</div>
		
	<div class="mb-3">
		<label for="exampleInputPhonenumber" class="form-label">Author Name*
	</label> <input type="text" class="form-control"
			id="examplephonenumber" required="required" name="aName" value=<%=b.getAuthor() %>>
		</div>
		
	<div class="mb-3">
	<label for="exampleInputPassword1" class="form-label">Price*</label>
		<input type="number" class="form-control"
			id="exampleInputPassword1" required="required" name="price" value=<%=b.getPrice() %>>
	</div>
	
		<div class="form-group">
		<label for="inputstate">Book Categories</label>
		<select id="inputState" name="bcate" class="form-control" value=<%=b.getBookCategory() %>>
		<option selected>--select--</option>
		<option>New book</option>
		</select>
		
		
		</div>
		
		<div class="form-group">
		<label for="inputstate">Book Status</label>
		<select id="inputState" name="bstatus" class="form-control" value=<%=b.getStatus() %>>
		<% 
		if("Active".equals(b.getStatus())){
		%>
				<option value="Inactive">InActive</option>
		
		<%
		 }else{
			 %>
			 <option value="Active">Active</option>
			 <% }
		 %>
		
		<option selected>--select--</option>
		

		</select>
		</div>
		
		
		
	<button type="submit" class="btn btn-primary">Update</button>
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