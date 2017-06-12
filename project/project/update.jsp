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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<%
int pid1=Integer.parseInt(request.getParameter("pid"));
int slot=Integer.parseInt(request.getParameter("slot"));
int cpno=Integer.parseInt(request.getParameter("copno"));
int did=Integer.parseInt(request.getParameter("did"));
long millis=System.currentTimeMillis();  
java.sql.Date date111=new java.sql.Date(millis);
Connection conn=null;
Statement st=null;
   ResultSet rs=null;
   PrintWriter pw= response.getWriter();
   ResultSet rs1=null;
   int count=0;
   int a=0,b=0,c=0;
   try
   {

       Class.forName("oracle.jdbc.driver.OracleDriver");
       System.out.println("Driver loaded succcessfully");
       
       conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
       System.out.println("Connection established");
       
       st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		 
       PreparedStatement pspmt = conn.prepareStatement("select * from appoint where date1='09-JUN-17'");//where date1=? ");
       System.out.println("select done");

/*        String dat=" 2017-06-09";
       Date date1=Date.valueOf(dat);
	     System.out.println("AAA date is: "+date1);

		pspmt.setDate(1,date1);
 */
       rs1=pspmt.executeQuery();
       System.out.println("query excuted "+rs1);

       while(rs1.next())
       {
           System.out.println("in while ");

		   int cp=rs1.getInt(4);
		   int slott=rs1.getInt(2);
		   int id=rs1.getInt(5);
		  
		   Date date11=rs1.getDate(3);
  	       String date12=String.valueOf(date11);
  
  	     System.out.println("date is: "+date12);

  	     
		  	 if(cp==cpno)
			{
				System.out.println("cop if case");
				if(did==id)
				{
					System.out.println(did+"  "+id);
					System.out.println("did if case");
					if(slott==slot)
					{
						System.out.println("slot if case");
						a++;						

					}
					else
					{
						b++;

					}
					break;
			}
			else
			{
				System.out.println("id else case");				
				c++;
			}
				
		}
		else
		{
					
					 PreparedStatement pspmt1 = conn.prepareStatement("update appoint set slot=?,id=?,coupon_no=? where pid=? ");//and date1=? ");
					  
						pspmt1.setInt(1,slot);   
						pspmt1.setInt(2,did);     
						pspmt1.setInt(3, cpno);
						pspmt1.setInt(4, pid1);
						//pspmt1.setDate(5, date1);

						pspmt1.execute();
						System.out.println("Record upadted in appoint");
						
		}					

		  	  
	}
       if(a!=0&&b!=0&&c!=0)
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
		pw.println("Coupon is genrated for patient id:"+pid1+" the coupon is   "+did+slot+":"+cpno);
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


 
    


      
     
