<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor's Login</title>
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="mislider.css" rel="stylesheet" type="text/css" />
<link href="mislider-custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="jquery-ui.css" />
<script>

	function validate() {
		
		var docName= document.getElementById("docName").value;
		var docPwd= document.getElementById("docPwd").value;
		
		if(docName.length > 0 && docPwd.length > 0){
			document.forms[0].submit();
		}else{
			alert("Enter username/password!");
			return false;
		}
	}
</script>
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
							<li><a href="recpLogin.jsp"><span>Receptionist Login</span></a></li> 
							<li><a class="active" href="docLogin.jsp"><span>Doctor Login</span></a></li> 
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
		<br><br>
<center>
		<div class="container">
			<div class="title">
				<h3>
				<span class="byline">Login Here</span></h3></div>
				<div>
				<form action="DoctorLoginServlet" method="post">
					<div>
					Doctor Name : <input type="text" name="dName" id="dName" class="textBox" placeholder="Doctor Name" required="" />
					</div>
					<div style="margin-top:20px">
					Password &nbsp &nbsp : <input type="password" name="dPwd" id="dPwd" class="textBox" placeholder="Password" required=""/>
					</div><br><br><br>
					<ul class="actions">
						<input type="submit" name="Login" value="Login" class="button" onclick="return validate();"/>
					</ul>
				</form>

			</div>
		</div>
</center><br><br>
<div id="copyright" class="container">
	<p>&copy; 2017 Care & Cure Hospital Limited | All rights reserved.</p>
</div>

</body>
</html>