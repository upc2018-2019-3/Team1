package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.stationDao;
import com.dao.stationDaoImpl;


public class stationUpdateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		int Sid = Integer.parseInt(sid);
		String sname = request.getParameter("sname");
		String sdate = request.getParameter("sdate");
		String sfunction = request.getParameter("sfunction");
		String swages = request.getParameter("swages");
		int Swages = Integer.parseInt(swages);
		String did = request.getParameter("did");
		int Did = Integer.parseInt(did);
		stationDao td = new stationDaoImpl();
		System.out.println(sid+sname+sdate+sfunction+swages+did);
		if(td.update(Sid,sname,sdate,sfunction,Swages,Did)){
			request.getRequestDispatcher("/stationPage.jsp").forward(request, response);
		}else{
			response.sendRedirect("stationPage.jsp");
			return;
		}
	}

}
