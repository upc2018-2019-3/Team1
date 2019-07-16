package com.dao;
import com.entity.user;
public interface connectionDao {
	public boolean login(String name, String pwd);
	public boolean isMan(String name);
	public boolean register(user user);
	public boolean registsearch(String name);
}
