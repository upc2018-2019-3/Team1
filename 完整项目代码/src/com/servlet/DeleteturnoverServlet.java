package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.dao.EmployeeDaoImpl;
import com.dao.turnover_employeeDao;
import com.dao.turnover_employeeDaoImpl;

public class DeleteturnoverServlet extends HttpServlet  {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaa");
		String eid = request.getParameter("eid");
		System.out.println("bbbbbbbbbbbbbbbbbbbbbb");
		
		int userId = Integer.parseInt(eid);
		System.out.println("cccccccccccccccccccccccc");
		turnover_employeeDao ud = new turnover_employeeDaoImpl();
		
		if(ud.delete(userId)){
			request.getRequestDispatcher("/employeeQuit.jsp").forward(request, response);
		}else{
			response.sendRedirect("employeeQuit.jsp");
			return;
		}
	}
}
