package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Bean.Patient;
import com.project.dao.BookAppoDao;

public class BookAppoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/css");
		PrintWriter out = response.getWriter();
		BookAppoDao dao = new BookAppoDao();
		Patient pt = new Patient();
		
		int pId = Integer.parseInt(request.getParameter("pId"));
		String FName = request.getParameter("FName");
		String LName = request.getParameter("LName");
		int Age = Integer.parseInt(request.getParameter("Age"));
		String Gender = request.getParameter("Gender");
		String Addr = request.getParameter("Addr");
		String Cont = request.getParameter("Cont");
		String Dis = request.getParameter("Dis");
		
		pt.setpId(pId);
		pt.setFName(FName);
		pt.setLName(LName);
		pt.setAge(Age);
		pt.setGender(Gender);
		pt.setAddr(Addr);
		pt.setCont(Cont);
		pt.setDisease(Dis);
		
		dao.setPatientDetails(pt);
		
		response.sendRedirect("nextPage.jsp");

	}

}
