<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/styles.css">
	<style type="text/css">
		
		table, th, td {
    		border: 1px solid black;
    		border-collapse: collapse;
    		padding: 15px;
    		text-align: center;
		}
		
		#p1 {
			text-align: center;
		}
		#event-table {
			margin: 20px;
		}
		th {
			font-size: 24px;
		}

	</style>
	
	
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
	      <a class="nav-item nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="./Controller_Store">Products</a>
	      <a class="nav-item nav-link" href="services_page.jsp">Services</a>
	      <a class="nav-item nav-link active" href="events_page.jsp">Events</a>
	      <a class="nav-item nav-link" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	<br/><br/><br/>
	
	<div id="event-table">
		<h2>Jack's Sparrow Events</h2>
		<table style="width:100%">
			<tr>
			    <th>Event</th>
			    <th>Date</th>
			    <th>Time</th>
			</tr>
			<tr>
				<td>
					<h3 id="p1">Taking Flight: Bringing in the Bird Skills</h3>
					<p>Get to know your birds better with Wendy Paulson. You can bring your own bird to get more useful tips on how to train them</p>
					<p>5500 North St. Louis Avenue, Chicago, IL 60625-4699</p>
				</td>
			    <td>May 2</td>
				<td>8 AM</td>
			</tr>
			<tr>
				<td>
					<h3 id="p1">Birds of Prey Series: Sparrows</h3>
					<p>Learn about the unique characteristics that help our native birds of prey survive. Live raptors will be on display.</p>
					<p>5500 North St. Louis Avenue, Chicago, IL 60625-4699</p>
				</td>
				<td>May 27</td>
				<td>1:30 PM</td>
			</tr>
			<tr>
				<td>
					<h3 id="p1">Sagawau Bird Hikes</h3>
					<p>Join a naturalist to observe birds. Learn to identify birds by field marks, behavior, sound and habitat. Binoculars available for loan.</p>
					<p>5500 North St. Louis Avenue, Chicago, IL 60625-4699</p>
				</td>
				<td>June 12</td>
				<td>8 AM</td>
			</tr>
			<tr>
				<td>
					<h3 id="p1">Sparrow Woods Bird Walk</h3>
					<p>This small preserve is a spring migrant hotspot. Added bonus: spring wildflowers.</p>
					<p>5500 North St. Louis Avenue, Chicago, IL 60625-4699</p>
				</td>
				<td>June 17</td>
				<td>9 AM</td>
			</tr>
		
		</table>
		<br><br>
		
		<!-- Do i need "." in front of action url -->
		<!-- YES YOU NEED DOT!!! -->
		<form action="./Controller_Store" method="POST">
			<input type="hidden" name="command" value="REGISTER">
  			<select name="event_name">
			    <option value="Taking Flight: Bringing in the Bird Skills">Taking Flight: Bringing in the Bird Skills</option>
			    <option value="Birds of Prey Series: Sparrows">Birds of Prey Series: Sparrows</option>
			    <option value="Sagawau Bird Hikes">Sagawau Bird Hikes</option>
			    <option value="Sparrow Woods Bird Walk">Sparrow Woods Bird Walk</option>
  			</select>
  			<br><br>
  			Email Address:<br>
  			<input type="email" name="email" value=""><br>
  			<br>
  			<input type="submit" value="Sign Up">
		</form>
	
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>