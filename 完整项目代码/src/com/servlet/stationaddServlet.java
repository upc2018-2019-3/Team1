package com.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.stationDao;
import com.dao.stationDaoImpl;
import com.entity.station;
public class stationaddServlet  extends HttpServlet {
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request, response);
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException{
		
			String sid = request.getParameter("sid");
			int Sid = Integer.parseInt(sid);
			String sname = request.getParameter("sname");
			String sdate = request.getParameter("sdate");
			String sfunction = request.getParameter("sfunction");
		
			String swages = request.getParameter("swages");
			int Swages = Integer.parseInt(swages);
			String did = request.getParameter("did");
			int Did = Integer.parseInt(did);
			 station t = new station();
			 t.setSid(Sid);
				t.setSname(sname);
				t.setSdate(sdate);
				t.setSfunction(sfunction);
				t.setSwages(Swages);
				t.setDid(Did);
				
			 stationDao td = new stationDaoImpl();
			if(td.register(t)){
				request.setAttribute("Sid", Sid);
				request.getRequestDispatcher("stationPage.jsp").forward(request, response);
			}else{
				response.sendRedirect("stationPage.jsp");
				return;
			}
		}

	}

