package com.servlet;
 
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.dao.EmployeeDaoImpl;
 
public class DeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String eid = request.getParameter("eid");
		int userId = Integer.parseInt(eid);
		System.out.println("deleteServlet");
		System.out.println(userId);
		EmployeeDao ud = new EmployeeDaoImpl();
		
		if(ud.delete(userId)){
//			getRequestDispatcher是服务器内部跳转，地址栏信息不变，只能跳转到web应用内的网页。
//			sendRedirect是页面重定向，地址栏信息改变，可以跳转到任意网页。
//			请求转发只能转发到本项目其它Servlet，而重定向不只能重定向到本项目的其它Servlet，还能定向到其它项目
			request.getRequestDispatcher("/employeePage.jsp").forward(request, response);//请求转发
		}else{
			response.sendRedirect("employeePage.jsp");
			return;
		}
	}
 
}
