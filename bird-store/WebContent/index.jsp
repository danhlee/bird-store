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
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gaegu"> 
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
	      <a class="nav-item nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="./Controller_Store">Products</a>
	      <a class="nav-item nav-link" href="services_page.jsp">Services</a>
	      <a class="nav-item nav-link" href="events_page.jsp">Events</a>
	      <a class="nav-item nav-link" href="checkout_page.jsp">Cart</a>
	    </div>
	  </div>
	</nav>
	

	<div class="jumbotron" id="info">
		<!-- carousel starts here -->
		<div id="carouselIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselIndicators" data-slide-to="2"></li>
		  </ol>
		  
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="carousel-img" src="images/bird_img1.jpg" alt="First slide">
		    </div>
		    <div class="carousel-item">
		      <img class="carousel-img" src="images/bird_img2.jpg" alt="Second slide">
		    </div>
		    <div class="carousel-item">
		      <img class="carousel-img" src="images/bird_img3.jpg" alt="Third slide">
		    </div>
		  </div>
		  
		  <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		
		<hr/>
		
		<div class="center">
			<p class="info-pane">Information</p>
		</div>
		
		
		<!-- accordian starts here -->
		<div id="accordion">
		  <div class="card">
		    <div class="card-header" id="headingOne">
		      <h5 class="mb-0">
		        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          Products
		        </button>
		      </h5>
		    </div>
		
		    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
		      <div class="card-body">
		        <p class="mainPageText">Select from our wide variety of bird products! From bird baths to feed and toys, Jack's Sparrow Aviary has got you covered!</p><br/>
		        <img class="mainPageImage" src="images/product1.jpg" alt="bird bath">
		        <img class="mainPageImage" src="images/product2.jpg" alt="bird toy">
		        <img class="mainPageImage" src="images/product3.jpg" alt="bird feeder">
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingTwo">
		      <h5 class="mb-0">
		        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		          Services
		        </button>
		      </h5>
		    </div>
		    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
		      <div class="card-body">
		        <p class="mainPageText">Bring your bird in for one of our legendary bird services! We offer wing clippings, cleanings, and general health checkups!</p><br/>
		        <img class="mainPageImage" src="images/service1.jpg" alt="bird getting wings clipped">
		        <img class="mainPageImage" src="images/service2.gif" alt="bird getting brushed">
		        <img class="mainPageImage" src="images/service3.jpg" alt="doctor holding bird">
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingThree">
		      <h5 class="mb-0">
		        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		          Events
		        </button>
		      </h5>
		    </div>
		    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
		      <div class="card-body">
		        <p class="mainPageText">Take part in our monthly bird and owner training events!</p>
		        <img class="mainPageImage" src="images/event1.jpg" alt="girl with bird">
		        <img class="mainPageImage" src="images/event2.jpg" alt="hand feeding bird">
		        <img class="mainPageImage" src="images/event3.jpg" alt="bird training">
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	
	
	<!--Footer-->
	<footer class="page-footer font-small indigo pt-0">
	    <div class="container">
	        <div class="row pt-5 mb-3 text-center d-flex justify-content-center">
	
	            <!-- About Us -->
	            <div class="col-md-2 mb-3">
	                <h6 class="text-uppercase font-weight-bold">
	                    <a data-toggle="modal" href="#AboutUsModal">About us</a>
	                </h6>
                    <!-- About Us modal -->
                    <div class="modal fade" id="AboutUsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="AboutUs-modal">About Us</h5>
					        
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      
					      <div class="modal-body">
							<fieldset class = "fieldset">
									<legend class = "legend"> Who we are </legend>
											
										<p> 
							 			Jack Sparrow Aviary Shop is a specialized store for all kind of birds. Our goal is to provide service 
							 			to our customers and do the best we can to make the experience of owning a pet, a good experience.
							 			Our employees are specialize in all kinds of birds and we feel it's our obligation to pass that knowledge along. 
							 			The care of our birds is our priority.  When you visit us you will get the supplies you need and the 
							 			information to keep your pet happy and healthy. We don't believe in cutting corners when it comes to 
							 			your pets welfare, so you can be assured when you come to us for help, we will provide you with what you need, 
							 			not the bare minimum, which seems to be a trend in some stores now days. 
										</p>
											
								</fieldset>
							<fieldset class = "fieldset">
								<legend class = "legend"> History </legend>
									
									<p> 
										Jack Sparrow Aviary Shop opened in March of 2018.  Over those days we have expanded twice, 
										those expansions can be seen by the services provided. The store was full of friends and family 
										who helped and supported us along the way volunteering their time to help us get started. 
										We still are a family owned and operated store ,and strives to provide good customer service, 
										good products and healthy locally-bred animals. 
										
									</p>
									
							</fieldset>
							
							<fieldset class = "fieldset">
							 	<legend class = "legend"> Mission </legend>
							 				
							 		<p> 
								 		Our goal is to provide service to our customers and do the best we 
								 		can to make the experience of owning a bird, a good experience. 
							 		</p>
							 				
							 </fieldset>
					        
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
	            </div>

				<!-- Location -->
	            <div class="col-md-2 mb-3">
	                <h6 class="text-uppercase font-weight-bold">
	                    <a data-toggle="modal" href="#locationModal">Location</a>
	                </h6>    
                    <!-- Location modal -->
                    <div class="modal fade" id="locationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="location-modal">Location</h5>
					        
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      
					      <div class="modal-body">
					        <p>5500 St Louis Ave, Chicago, IL 60625</p><br/>
					        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11863.684650633799!2d-87.7182002!3d41.9805024!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5a463e10f151a258!2sNEIU!5e0!3m2!1sen!2sus!4v1523004957258" width="100%" height="auto" style="border:0" allowfullscreen></iframe>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
	            </div>

				<!-- Contact -->
	            <div class="col-md-2 mb-3">
	                <h6 class="text-uppercase font-weight-bold">
	                    <a data-toggle="modal" href="#contactModal">Contact</a>
	                </h6>
	                <!-- Contact modal -->
                    <div class="modal fade" id="contactModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="contact-modal">Contact</h5>
					        
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      
					      <div class="modal-body">
					        <a href="mailto:info@jacksparrowaviary.com">info@jacksparrowaviary.com</a><br/>
					        <p>777-777-7777</p>
							<h4>Our team is available:</h4>
							<div class="hours">
								<p>
									Monday-Friday: 8 am - 6 pm <br/>
									Saturday: 8 am - 4 pm <br/>
									Sunday: CLOSED
								</p>
							</div>
							

							<div>
								<a href="https://www.facebook.com" class="fa fa-facebook">Follow Us on Facebook</a>
							</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
	            </div>
	        </div>

			<hr class="rgba-white-light" style="margin: 0 15%;">
	    </div>

	
	    <!--Copyright-->
	    <div class="footer-copyright py-3 text-center">
	        © 2018 Copyright
	    </div>

	
	</footer>

	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>