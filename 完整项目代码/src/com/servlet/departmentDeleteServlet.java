package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.department_formDao;
import com.dao.department_formDaoImpl;

public class departmentDeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aptId = request.getParameter("aptId");
		System.out.println(aptId);
		int userId = Integer.parseInt(aptId);
		department_formDao ud = new department_formDaoImpl();
		
		if(ud.delete(userId)){
			request.getRequestDispatcher("departmentPage.jsp").forward(request, response);
		}else{
			response.sendRedirect("main.jsp");
			return;
		}
	}

}
