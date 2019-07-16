package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.turnover_employeeDao;
import com.dao.turnover_employeeDaoImpl;

public class turnover_employeeUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid = request.getParameter("quitNumber");
		int Eid = Integer.parseInt(eid);
		String elseason = request.getParameter("quitName");
		String eldate = request.getParameter("quitDate"); 
		turnover_employeeDao td = new turnover_employeeDaoImpl();
		if(td.update(Eid,elseason,eldate)){
			//request.setAttribute("xiaoxi", "���³ɹ�");
			request.getRequestDispatcher("employeeQuit.jsp").forward(request, response);
		}else{
			System.out.println("2");
			response.sendRedirect("employeeQuit.jsp");
			return;
		}
	}

}
