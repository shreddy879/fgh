<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="mislider.css" rel="stylesheet" type="text/css" />
<link href="mislider-custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="jquery-ui.css" />

<title>Book Appointment</title>
</head>
<body>
<div id="demo-1" class="banner-inner">
		 <div class="header-w3-agileits" id="home">
			<div class="inner-header-agile">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<h1><a  href="index.html"><span>C</span><i class="fa fa-scissors" aria-hidden="true"></i>are & <span>C</span>ure <span>H</span>ospital</a></h1>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav linkEffects linkHoverEffect_12">
							<li><a href="index.html"><span>Home</span></a></li> 
							<li><a class="active" href="about.html"><span>About</span></a></li>
							<li><a href="recpLogin.jsp"><span>Receptionist Login</span></a></li> 
							<li><a href="docLogin.jsp"><span>Doctor Login</span></a></li> 
							<li><a href="contact.html"><span>Contact Us</span></a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div></nav>
					<div class="w3ls_search">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
							<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li></ul></div>
						<div id="cd-search" class="cd-search">
							<form action="#" method="post">
								<input name="Search" type="search" placeholder="Search...">
							</form>
						</div>
					</div>
				</div> 	
			</div>
 		</div>
		<div id="banner">&nbsp;</div>
		<div id="featured">
			<div class="container">
				<div class="title">
					<h2></h2>
					<span class="byline">Building Next Generation Integrated
						Healthcare Platform - Making Healthcare Affordable and Accessible</span>
				</div>
			</div>
			<ul class="actions">
				<li><a href="about.html" class="button">Read More</a></li>
			</ul>
		</div>
<br><br><br><br>
<center><h1> Book Appointment </h1></center><br><br><br><br>
    <div class="bg-agile">
	<div class="book-appointment">
	<center><h2>Enter Patient Details</h2></center>
			<form action="BookAppoServlet" method="post" name="bookingForm">
			<div class="left-agileits-w3layouts same">
			<div class="gaps">
			<p>Patient Name</p>
				<input type="text" name="Name" class="textBox" placeholder="" required=""/>
			</div>	

			<div class="gaps">	
			<p>Age</p>
				<input type="text" name="Age" class="textBox" placeholder="" required=""/>
			</div>
			
			<div class="gaps">
			<p>Address</p>
				<textarea name="Addr"  placeholder="" required="" ></textarea>
			</div>

			</div>

			<div class="right-agileinfo same">
			<div class="gaps">
				<p>Gender</p>	
					<select class="form-control">
						<option></option>
						<option>Male</option>
						<option>Female</option>
					</select>
			</div>

			<div class="gaps">	
			<p>Phone Number</p>
				<input type="text" name="Number" class="textBox" placeholder="" required=""/>
			</div>
			
			<div class="gaps">
			<p>Disease</p>
				<textarea name="About Symptoms" placeholder="" required="" ></textarea>
			</div>		
			</div>
			
			<div class="clear"></div><input type="submit" value="Make an Appointment">
			</form>
		</div>
   </div>

<div id="copyright" class="container">
	<p>&copy; 2017 Care & Cure Hospital Limited | All rights reserved.</p>
</div>

</body>
</html>