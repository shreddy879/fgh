<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.project.models.Patient" %>
	<%@ page import="java.util.ArrayList" %>
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

<title>View Patient History</title>
</head>
<body>

	<div id="wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="index.html">Mahindra Care</a></h1>

			</div>
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="docHomePage.jsp"
						accesskey="1" title="">Homepage</a></li>
				</ul>
			</div>
		</div>
		<div id="extra" class="container" style="background: #0080FF">
			<div class="title">
			
			<%
			ArrayList<Patient> list=(ArrayList<Patient>)application.getAttribute("PATLIST");
			System.out.print(list);
			%>
			
				<h2>View Patient History</h2>
			</div>
			<div id="three-column">
				<div>
					<div class="title" style="margin-left: 20%;">
						<table border="1px" style="width: 77%;color:#fff">
							<tr>
								<td>Patient Id</td>
								<td>Name</td>
								<td>Age</td>
								<td>Gender</td>
								<td>Address</td>
								<td>Contact</td>
							</tr>
							
								<%
							for(Patient p:list){
							%>
							<tr>
								<td><%=p.getpId() %></td>
								<td><%=p.getName() %></td>
								<td><%=p.getAge()%></td>
								<td><%=p.getGender()%></td>
								<td><%=p.getAddr() %></td>
								<td><%=p.getCont()%></td>
							</tr>
							<%} %>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="copyright" class="container">
		<p>&copy; Anusha & Anchal. All rights reserved.</p>
	</div>


</body>
</html>