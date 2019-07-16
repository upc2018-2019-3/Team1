package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.turnover_employeeDao;
import com.dao.turnover_employeeDaoImpl;
import com.entity.turnover_employee;


public class turnover_employeeAddServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid = request.getParameter("quitNumber");
		int Eid = Integer.parseInt(eid);
		String elseason = request.getParameter("quitStaion");
		String eldate = request.getParameter("quitDate"); 
		System.out.println(eid+elseason+eldate);
		

		
		turnover_employee t = new turnover_employee();
		t.setEid(Eid);
		t.setElseason(elseason);
		t.setEldate(eldate);
		
		turnover_employeeDao td = new turnover_employeeDaoImpl();
		if(td.register(t)){
			request.setAttribute("name", Eid);
			request.getRequestDispatcher("/employeeQuit.jsp").forward(request, response);
		}else{
			response.sendRedirect("employeeQuit.jsp");
			return;
		}
	}

}
