package com.dao;

import java.util.Date;
import java.util.List;

import com.entity.turnover_employee;


public interface turnover_employeeDao {
	public boolean register(turnover_employee t);
	public List<turnover_employee> getTurnover_employeeAll();
	public boolean update(int eid, String elseason, String eldate);
	public boolean delete(int eid) ;
}
