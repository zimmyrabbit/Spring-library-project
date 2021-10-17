package com.spring.library.dao;

import java.util.Map;

public interface UserDao {

	public int joinUser(Map<String, String> args);
	
	public String userJoinIdCheck(String args);
	
	public Map<String, String> userLogin(Map<String, String> args);

	public int userUpdate(Map<String, String> args);
	
	public int userPassWDupdate(Map<String, String> args);
}
