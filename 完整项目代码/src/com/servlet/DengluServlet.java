package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.connectionDao;
import com.dao.connectionDaoImpl;

public class DengluServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("1");
		String name="";
		String pwd="";
		boolean isMan=false;
		//radioButton
		//String select="";
		connectionDao ud = new connectionDaoImpl();
		try {
			name = request.getParameter("name");
			pwd = request.getParameter("pwd");
			isMan = ud.isMan(name);
			//radioButton
			//select = request.getParameter("identity");
			System.out.println("acbb"+name);
			System.out.println(isMan);
		}catch(Exception e) {
			e.getStackTrace();
		}

		System.out.println("DengluServlet");
		if(ud.login(name, pwd)){
			response.sendRedirect("Show.jsp?error=no&isMan="+isMan);
			return;
		}else{
			response.sendRedirect("Show.jsp?error=yes&isMan="+isMan);
			return;
		}
	}
}
