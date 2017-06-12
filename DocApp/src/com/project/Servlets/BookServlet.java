package com.project.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.DaoImpl.patientDaoImpl;
import com.project.dao.patientDao;
import com.project.models.Patient;


public class BookServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private patientDao patDao;
		
		public void init(ServletConfig config) throws ServletException {
			System.out.println("++++++ init() Invoked ++++++");
			patDao=new patientDaoImpl();
		}
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("++++++ doGet() Invoked ++++++");
			int pId=Integer.parseInt(request.getParameter("pId"));
			String Name=request.getParameter("Name");
			int Age=Integer.parseInt(request.getParameter("Age"));
			String Gender=request.getParameter("Gender");
			String Addr=request.getParameter("Addr");
			String Cont=request.getParameter("Cont");
			String Disease=request.getParameter("Disease");
			
			Patient pat=new Patient();
			pat.setpId(pId);
			pat.setName(Name);
			pat.setAge(Age);
			pat.setGender(Gender);
			pat.setAddr(Addr);
			pat.setCont(Cont);
			pat.setDisease(Disease);
			
			boolean isAdded;
			try {
				isAdded = patDao.setPatientDetails(pat);
				if(isAdded){
					RequestDispatcher rd=request.getRequestDispatcher("/afterBook.jsp");
					rd.forward(request, response);
				}else{
					PrintWriter out=response.getWriter();
					response.setContentType("text/html");
					out.println("<h2>ERROR DURING REGISTRATION !!!</h2>");
					out.println("<h3>Please Try Registering Again...</h3>");
					RequestDispatcher rd=request.getRequestDispatcher("/Book.jsp");
					rd.include(request, response);
				}	
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("++++++ doPost() Invoked ++++++");
			doGet(request, response);
		}

	}
