<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath()%>css/bootstrap.min.css" type="text/css">
	
	<title>Jack's Sparrow Aviary</title>
	
</head>
<body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" id="my-navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
					<span class ="sr-only">Toggle Navigation</span>
					<span class ="icon-bar"></span>
					<span class ="icon-bar"></span>
					<span class ="icon-bar"></span>
				</button>

				<a href="#" class="navbar-brand">Jack's Sparrow Aviary</a>
			</div><!-- END Navbar header-->

			<div id="navbar-collapse" class="collapse navbar-collapse">

			<a href="" class="btn btn-info navbar-btn navbar-right">Download Now</a>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#feedback">Feedback</a></li>
					<li><a href="#gallery">Gallery</a></li>
					<li><a href="#features">Features</a></li>
					<li><a href="#FAQ">FAQ</a></li>
					<li><a href="#contact">Contact Us</a></li>
				</ul>
			</div>
		</div><!-- END container-->
	</nav><!-- END navbar-->
	
	<!-- Gallery -->
	<div class="container">
		<section>
			<div class="page-header" id="gallery">
				<h2>Gallery<small> Here is the gallery</small></h2>
			</div>

			<div id="screenshot-carousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#screenshot-carousel" data-slide-to="0" class="active" ></li>
					<li data-target="#screenshot-carousel" data-slide-to="1"></li>
					<li data-target="#screenshot-carousel" data-slide-to="2"></li>
					<li data-target="#screenshot-carousel" data-slide-to="3"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">
						<img src="assets/discounts.jpg" alt="discounts">
						<div class="carousel-caption">
							<h3>Our Discounts!</h3>
							<p>Check out our sale items!</p>
						</div>
					</div>
					<div class="item">
						<img src="assets/bird_cage.jpg" alt="NOM NOM NOM">
						<div class="carousel-caption">
							<h3>Squirrel with doughnut</h3>
							<p>NOM NOM NOM</p>
						</div>
					</div>
					<div class="item">
						<img src="assets/bird_services.jpg" alt="NOM NOM NOM">
						<div class="carousel-caption">
							<h3>Squirrel with doughnut</h3>
							<p>NOM NOM NOM</p>
						</div>
					</div>
					<div class="item">
						<img src="assets/yellow_bird.jpg" alt="NOM NOM NOM">
						<div class="carousel-caption">
							<h3>Squirrel with doughnut</h3>
							<p>NOM NOM NOM</p>
						</div>
					</div>
				</div><!-- END carousel inner -->
				<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div><!-- END carousel -->
		</section>
	</div><!-- END container -->
	
	
</body>
</html>