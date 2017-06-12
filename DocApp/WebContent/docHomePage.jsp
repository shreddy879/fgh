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
<title>Doctor Home Page</title>
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
							<li><a href="about.html"><span>About</span></a></li>
							<li><a class="active"  href="DoctorLogoutServlet"><span>Logout</span></a></li> 
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
	
	<div id="extra" class="container">
		<div class="title">
			<h2>View Patient History</h2>
		</div>
		<div id="three-column">
			<div>
				<div style="margin-left: 35px;"><img src="images/img2.jpg" width="320" height="200" alt="" /></div>
			<div style="margin-top: -21%;margin-left: 33%;">
				<div class="title">
					<div class="content-w3ls">
						<form action="ViewHistoryServlet" method="post">
							<div>
							<br><br><br>Enter Patient Id &nbsp &nbsp <input type="text" name="pId" class="textBox" placeholder="Patient ID" required="" />
							</div>
							<ul class="actions">
							<input type="submit" name="showHistory" value="Show History" class="button"/>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

<div id="copyright" class="container">
	<p>&copy; 2017 Care & Cure Hospital Limited | All rights reserved.</p>
</div>


</body>
</html>