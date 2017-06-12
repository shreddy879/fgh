<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Appointment</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="mislider.css" rel="stylesheet" type="text/css" />
<link href="mislider-custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="jquery-ui.css" />
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
		<center><h1> Book Appointment </h1></center><br><br><br><br>
	<div class="bg-agile">
	<div class="book-appointment">
	<h2>Almost Done!</h2>
		<form action="AppointmentServlet" method="post">
			<div class="left-agileits-w3layouts same">
				<div class="gaps">
					<p>Select Date</p>		
					<input  id="datepicker1" name="Text" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
				</div>
			</div>
			<div class="right-agileinfo same">
			<div class="gaps">
				<p>Slot</p>	
					<select class="form-control">
							<option>Select</option>
							<option value="1">Morning Slot(10.00 am - 01.00 pm)</option>
							<option value="2">Evening Slot(05.00 pm - 08.00 pm)</option>
						</select>
			</div>
			</div>

			<div class="clear"></div><input type="submit" value="Make an appointment">
		</form>
	</div>
</div>
<div id="copyright" class="container">
	<p>&copy; 2017 Care & Cure Hospital Limited | All rights reserved.</p>
</div>
<!-- Calendar -->
		<script src="jquery-ui.js"></script>
			<script>
				$(function() {
				$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
				});
		</script>
<!-- //Calendar -->
</body>
</html>