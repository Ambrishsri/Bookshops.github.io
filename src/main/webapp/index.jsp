
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@include file="all_component/allcss.jsp" %>
<style text="text/css">
.back-img{
background:url("book/mainbook.jpeg");
height:50vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}

.crd-ho:hover{
background-color:#fcf7f7
}

</style>
</head>
<body style="background-color:#f7f7f7;">



<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid back-img">
<h2 class="text-center text-success fw-bold">BOOK SHOP</h2>
</div>


<!-- start recent book section -->


<div class="container" >
<h3 class="text-center">Recent Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/2.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2 " ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1 " >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/3.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C1 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/4.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C3 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/5.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C4 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View all</a>
</div>

</div>

<!-- End recent book section -->


<hr>


<!-- Start new book section -->



<div class="container" >
<h3 class="text-center">New Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/2.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/3.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C1 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/4.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C3 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/5.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C4 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">
<a href="" class="btn btn-danger btn-sm ml-2" ><i class="fa-solid fa-cart-shopping"></i>Add cart</a>
<a href="" class="btn btn-success btn-sm ml-1" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View all</a>
</div>

</div>
<!-- End new book section -->

<hr>
<!-- start old book section -->

<div class="container" >
<h3 class="text-center">Old Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/2.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">

<a href="" class="btn btn-success btn-sm ml-5" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/3.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C1 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">

<a href="" class="btn btn-success btn-sm ml-5" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/4.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C3 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">

<a href="" class="btn btn-success btn-sm ml-5" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center" >

<img alt="" src="book/5.jpg" style="width:150px;height:200px" class="img-thumblin">
<p>C4 programming</p>
<p>ambrish srivastav</p>
<p>Categories:New</p>

<div class="row ">

<a href="" class="btn btn-success btn-sm ml-5" >View details</a>
<a href="" class="btn btn-danger btn-sm ml-1" >299</a>
</div>


</div>

</div>


</div>


</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View all</a>
</div>

</div>

<!-- End old book section -->


<%@include file="all_component/footer.jsp" %>

</body>
</html>