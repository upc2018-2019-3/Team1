package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.department_form;
import com.util.DBconn;
import com.dao.*;

public class department_formDaoImpl implements department_formDao {
	
	
	//获取部门信息
	@Override
	public List<department_form> getdptAll() {
		List<department_form> list = new ArrayList<department_form>();
    	try {
		    DBconn.init();
		    System.out.println("getall");
			ResultSet rs = DBconn.selectSql("select * from department_form");
			System.out.println("getall3");
			while(rs.next()){
				System.out.println("getall1");
				department_form t = new department_form();
				t.setAptId(rs.getInt("aptId"));
				t.setAptName(rs.getString("aptName"));
				t.setDduty(rs.getString("dduty"));
				t.setUpaptId(rs.getInt("upaptId"));
				t.setDownaptId(rs.getInt("downaptId"));	
				System.out.println("getall1");
				list.add(t);
			}
			System.out.println("getall4");
			DBconn.closeConn();
			System.out.println("getall2");
			System.out.println(list);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    return null;
	}


	//删除部门信息
	@Override
	public boolean delete(int aptId) {
		boolean flag = false;
		DBconn.init();
		String sql = "delete from department_form where aptId='"+aptId+"'";
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	//添加部门信息
	@Override
	public boolean register(department_form t) {
		boolean flag = false;
		DBconn.init();
		String sql="insert into department_form(aptId,aptName,dduty,upaptId,downaptId) " +
				"values("+t.getAptId()+",'"+t.getAptName()+"','"+t.getDduty()+"',"+t.getUpaptId()+","+t.getDownaptId()+")";
		System.out.print(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
		
	}
	//更改部门信息
	@Override
	public boolean update(int aptId, String aptName, String dduty, int upaptId, int downaptId) {
		boolean flag = false;
		DBconn.init();
		String sql ="update department_form set  aptId ="+aptId +",aptName = '"+aptName
				+"' , dduty ='"+dduty
				+ "', upaptId ="+upaptId+",downaptId ="+downaptId+" where aptId = "+aptId;
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}

}


