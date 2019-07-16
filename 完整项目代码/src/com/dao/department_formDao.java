package com.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.department_form;
import com.util.DBconn;

public interface department_formDao {
	public boolean register(department_form t);
	public List<department_form> getdptAll() ;
	public boolean update(int aptId, String aptName, String dduty, int upaptId, int downaptId);
	public boolean delete(int id);
}
