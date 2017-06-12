package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.Bean.Doctor;
import com.project.dao.DoctorDao;

public class DoctorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		try {
			
			DoctorDao docDao = new DoctorDao();
			Doctor docObj = null;

			String dName = request.getParameter("dName");
			String dPwd = request.getParameter("dPwd");
			System.out.println(dName+" "+dPwd);

			docObj = docDao.checkUser(dName, dPwd);
			//System.out.println(docObj);
			
			//check with database
			if (dName.equals(docObj.getdName())
					&& dPwd.equals(docObj.getdPwd())) {
				//create session
				HttpSession session=request.getSession();
				session.setAttribute("DOCNAME_SESSION", dName);
				System.out.println("session id: "+session.getId());
				
				response.sendRedirect("docHomePage.jsp");
			}
			else
			{
				out.print("<h1>User Name or Password Invalid. Try Again!</h1>");
				request.getRequestDispatcher("docLogin.jsp").include(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("docLogin.jsp");
			out.print("<h1>User Name or Password Invalid. Try Again!</h1>");
		

			}
	
	}

}
