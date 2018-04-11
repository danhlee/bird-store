<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.jackssparrowaviary.store.Controller_Store"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/styles.css">
	<title>Jack's Sparrow Aviary</title>

	
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
	      <a class="nav-item nav-link" href="index.jsp">Home </a>
	      <a class="nav-item nav-link active" href="./Controller_Store">Products<span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="services_page.jsp">Services</a>
	      <a class="nav-item nav-link" href="events_page.jsp">Events</a>
	      <a class="nav-item nav-link" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	<br/><br/><br/>
	
	
	<a id="controllerLoader" href="./Controller_Store">Call MyServlet</a>
	
	<div class="container">
	  <h2>Products List</h2>
	  <form action="./Controller_Store">         
		  <table class="table">
		    <thead>
		      <tr>
		        <th>Product Name</th>
		        <th>Price</th>
		        <th>Quantity Remaining</th>
		        <th>Add to Cart</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		      	<c:forEach var="tempProduct" items="${product_list}">
		        
				 	<!-- set up add to cart update link for each student -->
				 	<c:url var="tempLink" value="Controller_Store">
				 		<c:param name="command" value="ADD_TO_CART" />
				 		<c:param name="product_id" value="${tempProduct.id}" />
				 		<c:param name="product_name" value="${tempProduct.productName}" />
				 		<c:param name="product_price" value="${tempProduct.price}" />
				 		<c:param name="product_quantity" value="${tempProduct.quantity}" />
				 	</c:url>
				 	
				 	<tr>
				 		<td> ${tempProduct.productName} </td>
				 		<td> ${tempProduct.price} </td>
				 		<td> ${tempProduct.quantity} </td>
				 		<td>
				 			<input type="submit" value="Add to cart">
				 			<a href="${tempLink}">Add</a>
			 			</td>
				 	</tr>
				 </c:forEach>
		      </tr>
		    </tbody>
		  </table>
		  <input type="submit" value="Checkout">
	  </form>
	</div>
</body>
</html>