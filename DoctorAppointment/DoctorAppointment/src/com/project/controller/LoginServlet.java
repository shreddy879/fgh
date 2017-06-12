package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
		
	try {
		String Id = request.getParameter("Id");
		String Pass = request.getParameter("Pass");
			
		//check with database
		if (Id.equals("doc1")&& Pass.equals("doc123")){
		//create session
		HttpSession session=request.getSession();
		session.setAttribute("SESSION", Id);
		System.out.println("session id: "+session.getId());
		response.sendRedirect("AppointmentDetailsServlet"); //request dispatcher
		}
		else if(Id.equals("doc2")&& Pass.equals("doc231")){
		//create session
		HttpSession session=request.getSession();
		session.setAttribute("SESSION", Id);
		System.out.println("session id: "+session.getId());
		response.sendRedirect("AppointmentDetailsServlet");
		}
		else if(Id.equals("doc3")&& Pass.equals("doc321")){
		//create session
		HttpSession session=request.getSession();
		session.setAttribute("SESSION", Id);
		System.out.println("session id: "+session.getId());
		response.sendRedirect("AppointmentDetailsServlet");
		}
		else if(Id.equals("admin")&& Pass.equals("admin")){
		//create session
		HttpSession session=request.getSession();
		session.setAttribute("SESSION", Id);
		System.out.println("session id: "+session.getId());
		response.sendRedirect("Receptionist.jsp");
		}
		else
		{
		out.print("<h1>User Name or Password Invalid. Try Again!</h1>");
		request.getRequestDispatcher("Login.jsp").include(request, response);
		}
	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("Login.jsp");
		out.print("<h1>User Name or Password Invalid. Try Again!</h1>");
			}
	
	}

}
