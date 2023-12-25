<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<h3 class="text-center">Hello Admin</h3>


<table class="table ">
  <thead class="bg-danger text-white">
    <tr>
      <th scope="col">OrderID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
       <th scope="col">Phone number</th>
        <th scope="col">BookNmae</th>
         <th scope="col">Author</th>
         <th scope="col">price</th>
        <th scope="col">Payment type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
       <td>Mark</td>
      <td>Otto</td>
      <td> </td>
       <td>Mark</td>
      <td>Otto</td>
      <td> </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
       <td>Mark</td>
      <td>Otto</td>
      <td>  </td>   
     <td>Mark</td>
      <td>Otto</td>
      <td> </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry the Bird</td>
      <td>@twitter</td>
       <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
     
      <td> </td>
      td>@twitter</td>
       <td>Mark</td>
      <td>Otto</td>
      
    </tr>
  </tbody>
</table>

</body>
</html>