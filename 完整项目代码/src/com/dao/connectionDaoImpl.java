package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.util.DBconn;
import com.entity.user;
//生成connectionDaoImpl类实现connectionDao接口中的login方法
public class connectionDaoImpl implements connectionDao{

	//登录验证
	public boolean login(String name, String pwd) {

		boolean flag = false;
		try {

			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from connection where name='"+name+"' and pwd='"+pwd+"'");
			System.out.println("connection");
			while(rs.next()){
					flag = true;
					System.out.println("connectionDaoImpl");
			}
			DBconn.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
//	判断是否为管理员
	public boolean isMan(String name){
		boolean flag = false;
		DBconn.init();
		ResultSet rs = DBconn.selectSql("select * from connection where name='"+name+"'");
		try {
			rs.next();
			if(rs.getInt("isMan")==1){
				flag = true;
			}
			return flag;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
//	用户注册
	public boolean register(user user){
		boolean flag = false;
		DBconn.init();
		System.out.println("B");
		String sql = "insert into connection(name,pwd) values("+"'"+user.getUname()+"'"+","+"'"+user.getPwd1()+"'"+")";
		System.out.println(sql);
		int i = DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	//判断用户名是否已存在
	public boolean registsearch(String name){
		boolean flag = false;
		DBconn.init();
		String sql="select * from connection where name='"+name+"'";
		System.out.println(sql);
		ResultSet rs = DBconn.selectSql(sql);
		try {
			rs.next();
			if(rs.getString("name").equals(name)){
				flag = true;
			}
			return flag;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
