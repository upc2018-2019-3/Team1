package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Employee;
import com.util.DBconn;

public class EmployeeDaoImpl implements EmployeeDao{
	//添加员工信息
	@Override
	public boolean register(Employee emp) {
		boolean flag = false;
		DBconn.init();
		String sql="insert into employee_form(eid,ename,esex,enation,eage,eedu,eprofessional,"
				+ "eschool,elanguage,eworkerdate,did,sid) " +
				"values('"+emp.getEid()+"','"+emp.getEname()+"','"+emp.getEsex()+"','"+emp.getEnation()+"','"+emp.getEage()+"','"+emp.getEedu()+"','"+emp.getEprofessional()+"','"+emp.getEschool()+ "','"+emp.getElanguage()+"','"+emp.getEworkerdate()+""
										+ "','"+emp.getDid()+"','"+emp.getSid()+"')";
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	//获取员工信息
	@Override
	public List<Employee> getEmployeeAll() {
		List<Employee> list = new ArrayList<Employee>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from employee_form");
			while(rs.next()){
				Employee t = new Employee();
				t.setEid(rs.getInt("eid"));
				t.setEname(rs.getString("ename"));
				t.setEsex(rs.getString("esex"));
				t.setEnation(rs.getString("enation"));
				t.setEage(rs.getInt("eage"));
				t.setEedu(rs.getString("eedu"));
				t.setEprofessional(rs.getString("eprofessional"));
				t.setEschool(rs.getString("eschool"));
				t.setElanguage(rs.getString("elanguage"));
				t.setEworkerdate(rs.getString("eworkerdate"));
				t.setDid(rs.getInt("did"));
				t.setSid(rs.getInt("sid"));
				t.setState(rs.getString("state"));
				list.add(t);
			}
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//删除员工信息
	@Override
	public boolean delete(int eid) {
		boolean flag = false;
		DBconn.init();
		System.out.println("delete����");
		String sql = "delete  from employee_form where eid="+eid;
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			System.out.println("delete����1");
			flag = true;
		}
		System.out.println("delete����2");
		DBconn.closeConn();
		return flag;
	}
	//更改员工信息
	@Override
	public boolean update(int eid, String ename, String esex, String enation, int eage, String eedu,
			String eprofessional, String eschool, String elanguage,  String eworkerdate,
			int did, int sid, String state) {
		boolean flag = false;
		DBconn.init();
		System.out.println(eid+ename+esex+enation+eage+eedu+
				eprofessional+eschool+elanguage+eworkerdate+
				did+sid+state);
		
		String sql ="update employee_form set "
				+"ename ='"+ename
				+"' ,esex ='"+esex
				+"' , enation ='"+enation
				+"' , eage ='"+eage
				+"' , eedu ='"+eedu
				+"' , eprofessional ='"+eprofessional
				+"' , eschool ='"+eschool
				+"' , elanguage ='"+elanguage
				+"' , eworkerdate ='"+eworkerdate
				+"' , did ='"+did
				+"' , sid ='"+sid
				+"' , state ='"+state
				+"' where eid = "+eid;
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}

}
