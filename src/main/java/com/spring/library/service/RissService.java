package com.spring.library.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.library.dao.RissDao;

@Service
public class RissService {

	@Autowired
	RissDao rissDao;

	public HashMap<String, Object> insert(HashMap<String, Object> map) {
		return rissDao.insert(map);
	}
	
	public HashMap<String, Object> list() {
		return rissDao.list();
	}
	
}
