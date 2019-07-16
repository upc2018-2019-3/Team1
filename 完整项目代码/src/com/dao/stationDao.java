package com.dao;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.entity.department_form;
import com.entity.station;
import com.util.DBconn;
public interface stationDao {
	public List<station> getdptAll() ;
	public boolean update(int sid, String sname, String sdate, String sfunction, int swages, int did);
	boolean delete(int sid);
	public boolean register(station t) ;
}