<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="mislider.css" rel="stylesheet" type="text/css" />
<link href="mislider-custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Alter Appointment</title>
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
<div id="wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="index.html">Mahindra Care</a></h1>
			
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="ReceptionistLogoutServlet" accesskey="1" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="extra" class="container">
		<div class="title">
			<h2>Book Appointment</h2>
		</div>
		<div id="three-column">
			<div>
				<div style="margin-left: 35px;"><img src="images/pic7.jpg" width="320" height="200" alt="" /></div>
			<div style="margin-top: -21%;margin-left: 33%;">
				<div class="title">
					<div>
						<form action="BookAppoServlet" method="post" name="bookingForm">
						<table style="margin-left: 25%;">
						<tr>
						<td>Enter Patient First Name :</td>
						<td><input type="text" name="patFName" id="patFName" class="textBox" placeholder="Enter First Name" required /></td>
						</tr>
						<tr>
						<td>Enter Patient Last Name :</td>
						<td><input type="text" name="patLName" id="patLName" class="textBox" placeholder="Enter Last Name" required /></td>
						</tr>
						<tr>
						<td>Enter Patient Age :</td>
						<td><input type="number" name="patAge" id="patAge" class="textBox" placeholder="Enter Patient Age" required /></td>
						</tr>
						<tr>
						<td>Enter Patient Address :</td>
						<td><textarea rows="5" cols="20" name="patAddr" placeholder="Enter Address here" style="border: 1px solid rgba(0,0,0,0.1);border-radius: 8px;width: 180px;text-align: center;"></textarea></td>
						</tr>
						<tr>
						<td>Enter Patient Contact :</td>
						<td><input type="text" name="patCont" id="patCont" class="textBox" placeholder="Enter Patient Contact" required /></td>
						</tr>
						<tr>
						<td>Enter Patient Disease :</td>
						<td><textarea rows="5" cols="20" name="patDis" placeholder="Enter Patient Disease here" style="border: 1px solid rgba(0,0,0,0.1);border-radius: 8px;width: 180px;text-align: center;"></textarea></td>
						</tr>
						<tr>
						<td>Enter Date:</td>
						<td><input type="date" name="bookingDate" id="bookingDate" class="textBox" /></td>
						</tr>
						<tr>
						<td>Enter slot :</td>
						<td>
						<select class="textBox" name="slot" id="slot">
							<option>Select</option>
							<option value="1">Morning Slot(10.00 am - 01.00 pm)</option>
							<option value="2">Evening Slot(05.00 pm - 08.00 pm)</option>
						</select>
						</td>
						</tr>
						</table>
							<ul class="actions">
							<input type="submit" name="bookApp" value="Book Appointment" class="button" onclick="validate()"/>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<!--  <div id="extra" class="container">
		<div class="title">
			<h2>Transfer Appointment</h2>
		</div>
		<div id="three-column">
			<div>
				<div style="margin-left: 35px;"><img src="images/img2.jpg" width="320" height="200" alt="" /></div>
			<div style="margin-top: -21%;margin-left: 33%;">
				<div class="title">
					<div>
						<form action="DoctorServlet" method="post">
						<table style="margin-left: 25%;">
						<tr>
						<td>Enter Patient Id :</td>
						<td><input type="text" name="patId" class="textBox" placeholder="Enter Patient Id" required /></td>
						</tr>
						<tr>
						<td>Enter slot :</td>
						<td>
						<select class="textBox">
							<option>Select</option>
							<option value="1">Morning Slot(10.00 am - 01.00 pm)</option>
							<option value="2">Evening Slot(05.00 pm - 08.00 pm)</option>
						</select>
						</td>
						</tr>
						</table>
							<ul class="actions">
							<input type="submit" name="TranferApp" value="Transfer Appointment" class="button"/>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	-->
	
	<div id="extra" class="container">
		<div class="title">
			<h2>View Patient History</h2>
		</div>
		<div id="three-column">
			<div>
				<div style="margin-left: 35px;"><img src="images/pic6.jpg" width="320" height="200" alt="" /></div>
			<div style="margin-top: -21%;margin-left: 33%;">
				<div class="title">
					<div>
						<form action="ViewHistoryServlet_Recp" method="post">
							<div>
							Enter Patient Id : <input type="text" name="patId" class="textBox" placeholder="Enter patient Id" required />
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
</div>
<div id="copyright" class="container">
	<p>&copy; 2017 Care & Cure Hospital Limited | All rights reserved.</p>
</div>
</body>
</html>