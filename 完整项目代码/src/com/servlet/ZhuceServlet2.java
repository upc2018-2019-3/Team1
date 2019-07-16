package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.dao.EmployeeDaoImpl;
import com.entity.Employee;

public class ZhuceServlet2 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("1");
		String eid = request.getParameter("eid");
		int userId = Integer.parseInt(eid);
		String ename = request.getParameter("ename");
		String esex = request.getParameter("esex");
		String enation = request.getParameter("enation");
		String eage = request.getParameter("eage");
		int usereage = Integer.parseInt(eage);
		String eedu= request.getParameter("eedu");
		String eprofessional= request.getParameter("eprofessional");
		String eschool= request.getParameter("eschool");
		String elanguage= request.getParameter("elanguage");
		String eworkerdate= request.getParameter("eworkerdate");
		String did= request.getParameter("did");
		int userDid = Integer.parseInt(did);
		String sid= request.getParameter("sid");
		int userSid = Integer.parseInt(sid);

		Employee t = new Employee();
		t.setEid(userId);
		t.setEname(ename);
		t.setEsex(esex);
		t.setEnation(enation);
		t.setEage(usereage);
		t.setEedu(eedu);
		t.setEprofessional(eprofessional);
		t.setEschool(eschool);
		t.setElanguage(elanguage);
		t.setEworkerdate(eworkerdate);
		t.setDid(userDid);
		t.setSid(userSid);

		EmployeeDao td = new EmployeeDaoImpl();

		if(td.register(t)){
			request.setAttribute("name", ename);
			request.getRequestDispatcher("/employeePage2.jsp").forward(request, response);
		}else{

			response.sendRedirect("employeePage2.jsp");
			return;
		}
	}
}
