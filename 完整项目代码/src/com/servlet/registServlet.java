package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entity.user;
import com.dao.connectionDao;
import com.dao.connectionDaoImpl;

public class registServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("1");
		String name="";
		String pwd1="";
		String pwd2="";
		connectionDao ud = new connectionDaoImpl();
		name = request.getParameter("name");
		pwd1 = request.getParameter("pwd1");
		pwd2 = request.getParameter("pwd2");
		System.out.println("registServlet");
		System.out.println(pwd1+"&"+pwd2);
		user u = new user();
		u.setUname(name);
		u.setPwd(pwd1);
		if(pwd1.equals(pwd2)){
			System.out.println("AAA");
			connectionDao td = new connectionDaoImpl();

			if (td.registsearch(name)){
				response.sendRedirect("Show2.jsp?error=yes1");
				return;
			}
			else if(td.register(u)) {
				request.getRequestDispatcher("/Show2.jsp").forward(request, response);
			}
		}else{
			response.sendRedirect("Show2.jsp?error=yes");
			return;
		}
	}
}
