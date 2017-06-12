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
<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@page import="java.sql.Statement"  %>
<%@page import="java.sql.Types"%>
<%@page import=" java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int pid=Integer.parseInt(request.getParameter("pid"));
String pname=request.getParameter("pname");
long pcno=Long.parseLong(request.getParameter("pcno"));
String padd=request.getParameter("padd");
//appoint
String type1=request.getParameter("action");
int slot=Integer.parseInt(request.getParameter("slot"));
int did=Integer.parseInt(request.getParameter("docid"));
int cpno=Integer.parseInt(request.getParameter("copno"));
String date11=request.getParameter("todays");
Date date1=Date.valueOf(date11);
int a=0,b=0;
long millis=System.currentTimeMillis();  
java.sql.Date currdate=new java.sql.Date(millis);
Connection conn=null;
Statement st=null;
   ResultSet rs=null;
   PrintWriter pw= response.getWriter();
   ResultSet rs1=null;
   int count=0;
   try
  	{
         Class.forName("oracle.jdbc.driver.OracleDriver");
         System.out.println("Driver loaded succcessfully");
         
         conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         System.out.println("Connection established");
         
         st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
         
         String query="select * from patient";
         rs=st.executeQuery(query);
         
         while(rs.next())
         {
               int id=rs.getInt(1);
               
               if(id==pid)
               { count=count+1; }
               
         }
        
         if(count==0)
         {
        	      	 
        	 	PreparedStatement pspmt = conn.prepareStatement("insert into patient values(?,?,?,?)");
				pspmt.setInt(1,pid);  
				pspmt.setString(2,pname);   
				pspmt.setString(3, padd);     
				pspmt.setLong(4, pcno);
				pspmt.execute();
				System.out.println("Record inserted in patient");
				pw.println("Patient record inserted successfully..!!!");
				%>
				<br>
				<br>
				<%
				//Coupon
				
				PreparedStatement pspmt2 = conn.prepareStatement("select * from appoint");// where date1=? ");
				//pspmt2.setDate(1, currdate);
	       		rs1=pspmt2.executeQuery();
         		System.out.println("query excuted");
         		while(rs1.next())
       		 {
         			System.out.println("while case");
         			int id=rs1.getInt(5);
         			int cp=rs1.getInt(4);
         			System.out.print("cp:"+cp);
         			System.out.print("cpno:"+cpno);
				if(cp==cpno)
				{
					System.out.println("cop if case");
					if(id==did)
					{
						System.out.println("id if case");
						a++;
					
					}
					else
					{
						System.out.println("id else case");
						b++;					
					}
					
				}
				else
				{
					System.out.println("cop else case");
					PreparedStatement pspmt1 = conn.prepareStatement("insert into appoint values(?,?,?,?,?,?)");
					pspmt1.setString(1,type1);  
					pspmt1.setInt(2,slot);   
					pspmt1.setDate(3,date1);     
					pspmt1.setInt(4, cpno);
					pspmt1.setInt(5, did);
					pspmt1.setInt(6, pid);
					pspmt1.execute();
					System.out.println("Record inserted in appoint");
					pw.write("\nCoupon is genrated for patient id:"+pid+"  the coupon is   "+did+":"+date1+":"+slot+":"+cpno);
				
				%>
				<br>
				<br>
				<form action="select.html">
				<input type="submit" value="go back">
				</form>
	<% 
       		 }
				
       		 }
				
         }  
       	        
      	 
         else
         {
        	 System.out.println("came in else");
        	 
        	 PreparedStatement pspmt2 = conn.prepareStatement("select * from appoint ");//where date1=?");
				//pspmt2.setDate(1, currdate);
	       		rs1=pspmt2.executeQuery();
         		System.out.println("query excuted"); 
         	 while(rs1.next())
        	 {
         		   Date date2=rs1.getDate(3);
         		  System.out.println("here in while");
         	       String date22=String.valueOf(date2);
              	   System.out.println("Date is"+date22);
              	   System.out.println("Date11 is"+currdate);
            	 
              	   if(date22.equals(date11))
                	{
              		 System.out.println("Done in if");
						pw.print("sorry the appointment is already present for this patient today");
						 %>
	              		 <form action="select.html">
							<input type="submit" value="go back">
							</form>	  
	              		 <%
							break;              	
              	  	}            	
              		 else
              		 {  
                 			System.out.println("while case");
                 			int id=rs1.getInt(5);
                 			int cp=rs1.getInt(4);
                 			System.out.print("cp:"+cp);
                 			System.out.print("cpno:"+cpno);
        				if(cp==cpno)
        				{
        					System.out.println("cop if case");
        					if(id==did)
        					{
        						System.out.println("id if case");
        						a++;
        					}
        					else
        					{
        						System.out.println("id else case");
        						b++;
        					}
        				}
        				else
        				{
        				System.out.println("cop else case");
        					PreparedStatement pspmt12 = conn.prepareStatement("insert into appoint values(?,?,?,?,?,?)");
        					pspmt12.clearParameters();
        					System.out.println("cop else case done");
        					pspmt12.setString(1,type1);  
        					pspmt12.setInt(2,slot);  
        					pspmt12.setDate(3,date1);  
        					pspmt12.setInt(4, cpno);
        					pspmt12.setInt(5, did);
        					pspmt12.setInt(6, pid);
        					//(type,slot,date1,coupon_no,id,pid)"+" 
        					//rs=pspmt12.executeQuery();
        					int count1=pspmt12.executeUpdate();
        					System.out.println("Count:"+count1);
        					
        					System.out.println("Record inserted in appoint");
        				}
        				
        				
              	  }
      			
        	 }
         		

      	 } 
         if(a!=0&&b!=0)
         {
  		   pw.print("Oopss!!! Please change the coupon deatils as the same coupon is already present");

      	   %>
  			<form action="updateapp.html">
  			<center>
  			<input type="submit" value="go back">
  			</center>
  			</form>
  		<%    
         }
         else
         {
  		pw.println("Coupon is genrated for patient id:"+pid+" the coupon is   "+did+":"+date11+":"+slot+":"+cpno);
  		%>
  		<br>
  		<br>
  		<form action="select.html">
  		<input type="submit" value="go back">
  		</form>
  <% 
  	
         }

  	}
	catch (ClassNotFoundException e) {e.printStackTrace();} 
   catch(SQLIntegrityConstraintViolationException e ){
       //Duplicate entry '' for key 'PRIMARY'
     //  System.out.println(e.getMessage());//you can modify the output as per your requirement.
    		   pw.print("Oopss!!! Please change the coupon deatils as the same coupon is already present");
    		   %>
				<form action="updateapp.html">
				<center>
				<input type="submit" value="go back">
				</center>
				</form>
<%    
  } catch (Exception e) {
       e.printStackTrace();
  }  
 
   
%>

</body>
</html>