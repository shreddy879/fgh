<%@page import="java.io.PrintWriter"%>
<%@page import="monfox.toolkit.snmp.agent.modules.SnmpV2Mib.SysOREntry"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page errorPage="LoginErrorPage.jsp" %>
    <%@page import="java.sql.Connection"  %>
<%@page import="java.sql.DriverManager"  %>
<%@page import="java.sql.PreparedStatement"  %>
<%@page import="java.sql.ResultSet"  %>
<%@page import="java.sql.CallableStatement"  %>
<%@page import="java.sql.SQLException"  %>
<%@page import="java.sql.Statement"  %>
<%@page import="java.sql.Types"%>
<%@page import=" java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<body background="img1.jpg">
<%
System.out.println("error here");
String date1=request.getParameter("today");
Connection conn=null;
Statement st=null;
   ResultSet rs=null;
   PrintWriter pw= response.getWriter();
   ResultSet rs1=null;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
    System.out.println("Driver loaded succcessfully");
    
    conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    System.out.println("Connection established");
    
    st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    
    String query="select * from appoint order by pid";
    rs1=st.executeQuery(query);	
    System.out.println("query executed");
    %>
<table border="2" width="1000" height="50">
<tr>
<th>
APPOINTMENT DETAILS
</th>
</tr>
</table>
<br>
<br>
    <%
    while(rs1.next())
    {
 	   
		   Date date12=rs1.getDate(3);
	       String date2=String.valueOf(date12);
	     
	       
		   System.out.println("in rs");
	       if(date2.equalsIgnoreCase(date1))
	       { System.out.println("in if block");
	    	   %>
	    	   
	    	   
<table border="2" width="1000" height="50">
<tr>
<th>TYPE</th>
<th>PATIENT ID</th>
<th>DOCTOR ID</th>
<th>DATE</th>
<th>SLOT</th>
<th>COUPON NO</th>
</tr>
	
				
<TR>
<TD><%=rs1.getString(1)%></TD>
<TD><%=rs1.getString(6)%></TD>
<TD><%=rs1.getString(5)%></TD>
<TD><%=rs1.getDate(3)%></TD>
<TD><%=rs1.getString(2)%></TD>
<TD><%=rs1.getString(4)%></TD>
</TR>
				
</table>
<%	    	   
	    	   
	       }
	       
	    }
    
     	   
    
}
catch (ClassNotFoundException e) {e.printStackTrace();} 
	catch (SQLException e) {e.printStackTrace();} 

%>

<form action="welcome.html">
<center>
<input type="submit" value="go back">
</center>
</form>	
</body>
</html>