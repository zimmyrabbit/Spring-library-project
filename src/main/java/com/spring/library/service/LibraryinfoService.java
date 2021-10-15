package com.spring.library.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.library.dao.LibraryinfoDao;

@Service
public class LibraryinfoService {

	@Autowired LibraryinfoDao libraryinfoDao;

	public List<HashMap<String, Object>> getLibraryinfoList() {

		List<HashMap<String,Object>> list = libraryinfoDao.selectLibraryinfoList();
		
		return list;
	}
	
	
}
