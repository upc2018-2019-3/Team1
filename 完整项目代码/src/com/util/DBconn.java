package com.util;
 
import java.sql.*;
 
public class DBconn {
//	static String url = "jdbc:mysql://localhost/test?useunicuee=true& characterEncoding=utf8";
	static String url = "jdbc:mysql://49.234.77.176:3306/test?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
	static String username = "root"; 
	static String password = "2013";
	static Connection  conn = null;
	static ResultSet rs = null;
	static PreparedStatement ps =null;
	//连接数据库
	public static void init(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//执行sql增删改语句
	public static int addUpdDel(String sql){
		int i = 0;
		try {
			PreparedStatement ps =  conn.prepareStatement(sql);
			i =  ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return i;
	}
	//执行sql查询语句
	public static ResultSet selectSql(String sql){
		try {
			ps =  conn.prepareStatement(sql);
			rs =  ps.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	//关闭数据库连接
	public static void closeConn(){
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
