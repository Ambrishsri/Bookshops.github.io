<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="admin/allcss.jsp" %>
</head>
<body>
<h1>home</h1>
<%@include file="admin/navbar.jsp" %>
<c:if test="${not empty userobj}">
<h1>Name:${userobj.name}</h1>
<h1>Email:${userobj.email}</h1>
						</c:if>
						
						
</body>
</html>