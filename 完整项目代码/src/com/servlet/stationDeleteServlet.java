package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.*;


public class stationDeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		int Sid = Integer.parseInt(sid);
		stationDao ud = new stationDaoImpl();
		
		if(ud.delete(Sid)){
			request.getRequestDispatcher("stationPage.jsp").forward(request, response);
		}else{
			response.sendRedirect("stationPage.jsp");
			return;
		}
	}

}
