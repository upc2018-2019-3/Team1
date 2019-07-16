package com.servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.EmployeeDao;
import com.dao.EmployeeDaoImpl;


public class UpdateServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		String state = request.getParameter("state");
		System.out.println("3333");
		System.out.println("1"+eid+ename+esex+enation+eage+eedu+
				eprofessional+eschool+elanguage+eworkerdate+
				did+sid+state);
		EmployeeDao td = new EmployeeDaoImpl();
		if(td.update(userId,ename, esex, enation,usereage, eedu,eprofessional,eschool,elanguage,eworkerdate,userDid,userSid,state)){
			request.getRequestDispatcher("/employeePage.jsp").forward(request, response);
		}else{
			System.out.println("2");
			response.sendRedirect("employeePage.jsp");
			return;
		}
	}
}
 
