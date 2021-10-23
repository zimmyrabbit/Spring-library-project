package com.spring.library.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.library.dao.UserDao;

@Service
public class UserService {

	@Autowired
	UserDao userDao;

	public int joinUser(Map<String, String> args) {
		return userDao.joinUser(args);
	}	
	
	public String userJoinIdCheck(String id) {
		return userDao.userJoinIdCheck(id);
	}
	
	public Map<String, String> userLogin(Map<String, String> args) {
		return userDao.userLogin(args);
	}
	
	public List<Map<String, String>> userList() {
		return userDao.userList();
	}
	
	public List<Map<String, String>> bbsList() {
		return userDao.bbsList();
	}
	
	public int userUpdate(Map<String, String> args) {
		return userDao.userUpdate(args);
	}
	
	public int userPassWDupdate(Map<String, String> args) {
		return userDao.userPassWDupdate(args);
	}
	public int bookreviewRemove(Map<String, String> args) {
		return userDao.bookreviewRemove(args);
	}
	
	public int nonfacedebatecollectRemove(Map<String, String> args) {
		return userDao.nonfacedebatecollectRemove(args);
	}

	public HashMap<String, Object> getUserJoinData() {
		return userDao.selectUserJoinData();
	}

	public HashMap<String, Object> getReviewCnt() {
		return userDao.selectReviewCnt();
	}
}
