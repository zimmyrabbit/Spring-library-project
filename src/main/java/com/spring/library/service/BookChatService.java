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
	
	public ArrayList<Map<String, Object>> getMypageChatList(String userSeq) {
		
		return bookChatDao.getMypageChatList(userSeq);
		
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

	public void joinDebate(HashMap<String, Integer> map) {
		
		bookChatDao.updatePartPers(map);
		if(getParticipationFlag(map.get("debateSeq"), map.get("userSeq"))) {
			bookChatDao.updateStateZero(map);
		} else {
			bookChatDao.insertNonfaceDebate(map);
		}
	}

	public int getPartPers(HashMap<String, Integer> map) {
		int partPers = bookChatDao.selectPartPers(map);
		return partPers;
	}
	
	public int insertChatData(HashMap<String, String> map) {
		return bookChatDao.insertChatData(map);
	}

	public boolean getParticipationFlag(int no, int userSeq) {

		int part = bookChatDao.selectParticipationFlag(no,userSeq);
		
		if(part > 0) {
			return true;
		} else {
			return false;
		}
	}

	public void cancleDebate(HashMap<String, Integer> map) {
		bookChatDao.minusPartPers(map);
		bookChatDao.updateStateOne(map);
	}
	
	
}
