package com.project.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ReceptionistLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		String rName = request.getParameter("rName");
		String rPwd = request.getParameter("rPwd");
		
		if(rName.equals("Admin") && rPwd.equals("Admin")){
			HttpSession recep_session=request.getSession(true);
			recep_session.setAttribute("RECEP_SESSION", rName);
			System.out.println("session id: "+recep_session.getId());
			RequestDispatcher rd=request.getRequestDispatcher("recpHomePage.jsp");
			rd.forward(request, response);

		}
		else
		{
			out.print("User Name or Password Invalid. Try Again!");
			RequestDispatcher rd=request.getRequestDispatcher("recpLogin.jsp");
			rd.include(request, response);
		}
	}

}
