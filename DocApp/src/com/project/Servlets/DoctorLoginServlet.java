package com.project.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.DaoImpl.doctorDaoImpl;
import com.project.models.Doctor;


public class DoctorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		try {
			
			doctorDaoImpl docDao = new doctorDaoImpl();
			Doctor docObj = null;

			String dNo = request.getParameter("dNo");
			String dPwd = request.getParameter("dPwd");
			System.out.println(dNo+" "+dPwd);

			docObj = docDao.validateDoctor(dNo, dPwd);
			//System.out.println(docObj);
			
			//check with database
			if (dNo.equals(docObj.getdNo())
					&& dPwd.equals(docObj.getdPwd())) {
				//create session
				HttpSession session=request.getSession();
				session.setAttribute("DOCNO_SESSION", dNo);
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
