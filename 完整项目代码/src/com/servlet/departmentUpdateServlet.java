package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.department_formDao;
import com.dao.department_formDaoImpl;

public class departmentUpdateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String did = request.getParameter("deptNumber");
		int Did = Integer.parseInt(did);
		String dname = request.getParameter("deptName");
		String dduty = request.getParameter("deptLeader");
		String edid = request.getParameter("deptUdep");
		int Edid = Integer.parseInt(edid);
		String sdid = request.getParameter("deptDdep");
		int Sdid = Integer.parseInt(sdid);
		System.out.println(Did+dname+dduty+Edid+Sdid);
		department_formDao td = new department_formDaoImpl();
		if(td.update(Did,dname,dduty,Edid,Sdid)){
			request.getRequestDispatcher("departmentPage.jsp").forward(request, response);
		}else{
			System.out.println("2");
			response.sendRedirect("departmentPage.jsp");
			return;
		}
	}

}
