package com.spring.library.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.library.dao.BookChatDao;

@Service
public class BookChatService {

	@Autowired
	BookChatDao bookChatDao;

	public ArrayList<Map<String, Object>> getNonfaceDebateCollectList() {
		
		ArrayList<Map<String,Object>> list = bookChatDao.selectNonfaceDebateCollectList();
		
		return list;
	}

	public HashMap<String, Object> getNonfaceDebateCollectDetail(int no) {
		
		HashMap<String,Object> map = bookChatDao.selectNonfaceDebateCollectDetail(no);
		
		return map;
	}

	public void putNonfaceDebateCollectWrite(HashMap<String, Object> map) {

		bookChatDao.insertNonfaceDebateCollectWrite(map);
	}

	public void cutNonfaceDebateCollectDelete(int no) {
		
		bookChatDao.deleteNonfaceDebateCollectDelete(no);
	}
	
	
}
