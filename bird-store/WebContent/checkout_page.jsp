<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/styles.css">
	
	<title>My Shopping Cart</title>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	  <a class="navbar-brand" href="#">Jack's Sparrow Aviary</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    <div class="navbar-nav">
	      <a class="nav-item nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="./Controller_Store">Products</a>
	      <a class="nav-item nav-link" href="services_page.jsp">Services</a>
	      <a class="nav-item nav-link" href="events_page.jsp">Events</a>
	      <a class="nav-item nav-link active" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	<br/><br/><br/>
	<table class="table">
	    <thead>
	      <tr>
	        <th>Product Name</th>
	        <th>Price</th>
	        <th>Quantity</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <c:forEach var="cartItem" items="${sessionScope.shopping_cart}">
	       
		 	
		 	<tr>
		 		<td> ${cartItem.name} </td>
		 		<td> ${cartItem.price} </td>
		 		<td> 1 </td>
		 	</tr>
		 </c:forEach>
	     </tr>
	    </tbody>
	 </table>
</body>
</html>