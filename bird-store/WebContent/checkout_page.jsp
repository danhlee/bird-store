<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/styles.css">
	<title>Jack's Sparrow Aviary</title>
	
	<script src="validation.jsp"></script>

	
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
	      <a class="nav-item nav-link" href="./Controller_Store">Products<span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="services_page.jsp">Services</a>
	      <a class="nav-item nav-link" href="events_page.jsp">Events</a>
	      <a class="nav-item nav-link active" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	<br/><br/><br/>
	
	<div class="container">
		<h2>Shopping Cart</h2>
		<form action="Controller_Store" method="POST" >
			<input type="hidden" name="command" value="PURCHASE" />   
			<table class="table">
			    <thead>
					<tr>
					  <th>Product Name</th>
					  <th>Price</th>
					  <th>Remove from cart</th>
					</tr>
			    </thead>
				<tbody>
					<c:forEach var="tempCartItem" items="${sessionScope.shopping_cart}">
						<!-- set up add to cart update link for each student -->
						<c:url var="tempLink" value="Controller_Store">
							<c:param name="command" value="REMOVE_FROM_CART" />
							<c:param name="product_id" value="${tempCartItem.id}" />
							<c:param name="product_name" value="${tempCartItem.productName}" />
							<c:param name="product_price" value="${tempCartItem.price}" />
							<c:param name="product_quantity" value="${tempCartItem.quantity}" />
						</c:url>
				
						<tr>
							<td> ${tempCartItem.productName} </td>
							<td> ${tempCartItem.price} </td>
							<td>
								<a class="cart_button" href="${tempLink}">Remove from cart</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<!-- Payment Info -->
			<div class="payment-name">
                <label>First Name</label>
                <input type="text" pattern="^[A-Za-z]+$" class="form-control" name="payment_first_name" placeholder="letters only" required>

                <label>Last Name</label>
                <input type="text" pattern="^[A-Za-z]+$" class="form-control" name="payment_last_name" placeholder="letters only" required>
            </div>
            <br/>
            <!-- Credit card number can be between 8-19 digits -->
            <div class="card-type">
                <label>Card Type</label>
                <select name="cardType">
                    <option value="Visa">Visa</option>
                    <option value="Mastercard">Mastercard</option>
            	</select>
            </div>
            <div class="payment-number">
                <label>Card Number</label>
                <input type="text" pattern="^[0-9]{8,19}$" class="form-control" name="card_number"  placeholder="8 to 19 digits" required>
            </div>
            
            <div class="payment-number">
                <label for="cvv">CVV</label>
                <input type="text" pattern="^[0-9]{3}$" class="form-control" name="cvv" placeholder="3 digits"required>
            </div>
            <br/>
            <div class="payment-expiration">
                <label>Expiration Date</label>
                <select name="expDateMonth">
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select name="expDateYear">
                    <option value="2018"> 2018</option>
                    <option value="2019"> 2019</option>
                    <option value="2020"> 2020</option>
                    <option value="2021"> 2021</option>
                    <option value="2022"> 2022</option>
                    <option value="2023"> 2023</option>
                    <option value="2024"> 2024</option>
                    <option value="2025"> 2025</option>
                    <option value="2026"> 2026</option>
                </select>
            </div>
			<br/>
			<input type="submit" value="Purchase" >
		</form>
	</div>
	<br/><br/><br/><br/><br/><br/>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>