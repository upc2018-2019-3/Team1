package com.dao;

import java.util.List;

import com.entity.Employee;

public interface EmployeeDao {
	public boolean register(Employee emp);
	public List<Employee> getEmployeeAll();
	public boolean delete(int eid) ;
	public boolean update(int eid, String ename, String esex, String enation, int eage, String eedu, String eprofessional, String eschool, String elanguage, String eworkerdate, int did, int sid, String state) ;
}
