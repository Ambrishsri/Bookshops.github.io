<%@page import="entity.BOOKDETAILS"%>
<%@page import="java.util.List"%>
<%@page import="DB.DB"%>
<%@page import="DAO.BookDAOImpl"%>
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

<h3 class="text-center">Hello Admin</h3>
<c:if test="${not empty succmsg }">
<h4 class="text-center text-success">${succmsg}</h4>
<c:remove var="succmsg" scope="session"></c:remove>
</c:if>

<c:if test="${not empty failmsg }">
<h4 class="text-center text-success">${failmsg}</h4>
<c:remove var="succmsg" scope="session"></c:remove>
</c:if>

<table class="table ">
  <thead class="bg-danger text-white">
    <tr>
     <th scope="col">ID</th>
      <th scope="col">BookName</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
       <th scope="col">Image</th>
        <th scope="col">Status</th>
         <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  BookDAOImpl dao=new BookDAOImpl(DB.getConn());
  List<BOOKDETAILS> list=dao.getAllbooks();
  for(BOOKDETAILS b:list){
  %>
    <tr>
      <td><%=b.getBookid() %></th>
      <td><%=b.getBookname() %></td>
       <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
       <td><%=b.getStatus() %></td>
        <td><img src="../book/<%=b.getPhotoname()%>"style="width:50px;height:50px"></td>
       
     
      <td><a href="Editbook.jsp?id=<%=b.getBookid()%>" class="btn-btn-sm btn-primary"><i class="fa-regular fa-pen-to-square"></i>Edit</a>
       <a href="../delete?id=<%=b.getBookid()%>"" class="btn-btn-sm btn-danger"><i class="fa-solid fa-trash"></i>Delete</a></td>
    </tr>
	  
  <%
  }
  %>
  
   
    
  </tbody>
</table>
<div style="margin-top:130px">
<%@include file="footer.jsp"%>
</div>
</body>
</html>