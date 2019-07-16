package com.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.entity.department_form;
import com.entity.station;
import com.util.DBconn;

public class stationDaoImpl implements stationDao {
	//添加职位信息
	@Override
	public boolean register(station t) {
			boolean flag = false;
			DBconn.init();
			String sql="insert into station_form(sid,sname,sdate,sfunction,swages,did) " +
					"values("+t.getSid()+",'"+t.getSname()+"','"+t.getSdate()+"','"+t.getSfunction()+"',"+t.getSwages()+","+t.getDid()+")";
			System.out.println(sql);
			int i =DBconn.addUpdDel(sql);
			if(i>0){
			
				flag = true;
			}
			DBconn.closeConn();
			return flag;
			
		}
	


	//获取职位信息
	@Override
	public List<station> getdptAll() {
		
		List<station> list = new ArrayList<station>();
    	try {
    		
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from station_form");
			while(rs.next()){
				
				station t = new station();
				t.setSid(rs.getInt("sid"));
				t.setSname(rs.getString("sname"));
				t.setSdate(rs.getString("sdate"));
				t.setSfunction(rs.getString("sfunction"));
				t.setSwages(rs.getInt("swages"));
				t.setDid(rs.getInt("did"));
				list.add(t);
						}
			
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return null;
	}
	//更改职位信息
	@Override
	public boolean update(int sid, String sname, String sdate, String sfunction, int swages, int did) {
		boolean flag = false;
		DBconn.init();
		String sql ="update station_form set sname ='"+sname
				+"' , sdate ='"+sdate
				+"' , sfunction ='"+sfunction
				+ "', swages ="+swages+",did ="+did+" where sid ="+sid+"";
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	//删除职位信息
	@Override
	public boolean delete(int sid) {
		boolean flag = false;
		DBconn.init();
		String sql = "delete from station_form where sid="+sid+"";
		System.out.println(sql);
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}

}
