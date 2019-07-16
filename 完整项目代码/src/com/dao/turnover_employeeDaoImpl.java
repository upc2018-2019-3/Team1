package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.entity.turnover_employee;
import com.util.DBconn;

public class turnover_employeeDaoImpl implements turnover_employeeDao {
	//添加离职员工信息
	@Override
	public boolean register(turnover_employee t) {
		boolean flag = false;
		DBconn.init();
		String sql="insert into turnover_employee_form(eid,elseason,eldate) " +
				"values("+t.getEid()+",'"+t.getElseason()+"','"+t.getEldate()+"')";
		System.out.print(sql);
		String sql1 = "delete  from employee_form where eid="+t.getEid();
		int i =DBconn.addUpdDel(sql);
		int i1 =DBconn.addUpdDel(sql1);
		if(i>0&&i1>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	//获取离职员工信息
	@Override
	public List<turnover_employee> getTurnover_employeeAll() {
		List<turnover_employee> list = new ArrayList<turnover_employee>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from turnover_employee_form");
			while(rs.next()){
				turnover_employee t = new turnover_employee();
				t.setEid(rs.getInt("eid"));
				t.setElseason(rs.getString("elseason"));
				t.setEldate(rs.getString("eldate"));
				list.add(t);
			}
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


	//删除离职员工信息
	@Override
	public boolean delete(int eid) {
		boolean flag = false;
		DBconn.init();
		String sql = "delete  from turnover_employee_form where eid="+ eid+"";
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
			System.out.println("delete�ɹ�");
		}
		DBconn.closeConn();
		return flag;	}
	//更改离职员工信息
	@Override
	public boolean update(int eid, String elseason, String eldate) {
		boolean flag = false;
		DBconn.init();
		String sql ="update turnover_employee_form set "
				+ " elseason ='"+elseason
				+"' , eldate ='"+eldate
				+"' where eid = "+ eid;
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;

	}

}
