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
	<style>
		.confirmation-header {
			text-align: center;
		}
		.container {
			margin: 20px;
		}
	</style>
	
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
	      <a class="nav-item nav-link" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	<br/><br/><br/>
	
	<!-- Confirmation Message -->
	<h1 class="confirmation-header">
		<%
			String msg = (String)request.getAttribute("registration_message"); 
			if (msg != null) {
				out.print(msg);
			}
		%>
	</h1>
	
	<!-- Form to list attendees by event -->
	<div class="container">
		<form action="./Controller_Store" method="GET">
			<input type="hidden" name="command" value="LIST_REGISTERED">
			<select name="event_name">
			    <option value="Taking Flight: Bringing in the Bird Skills">Taking Flight: Bringing in the Bird Skills</option>
			    <option value="Birds of Prey Series: Sparrows">Birds of Prey Series: Sparrows</option>
			    <option value="Sagawau Bird Hikes">Sagawau Bird Hikes</option>
			    <option value="Sparrow Woods Bird Walk">Sparrow Woods Bird Walk</option>
	  		</select>
	  		<input type="submit" value="Submit">
		</form>
		<table class="table">
		    <thead>
				<tr>
				  <th>Email</th>
				  <th>Event</th>
				  <th>Registration Date</th>
				</tr>
		    </thead>
			<tbody>
				<c:forEach var="tempRegistration" items="${event_list}">				
					<tr>
						<td> ${tempRegistration.email} </td>
						<td> ${tempRegistration.eventName} </td>
						<td> ${tempRegistration.registrationDate} </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		</br></br></hr>
		<table class="table">
		    <thead>
				<tr>
				  <th>Event</th>
				  <th>Total Registrants</th>
				</tr>
		    </thead>
			<tbody>
				<c:forEach var="tempEvent" items="${event_count_list}">				
					<tr>
						<td> ${tempEvent.eventName} </td>
						<td> ${tempEvent.count} </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
	</div>
	
	

	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>