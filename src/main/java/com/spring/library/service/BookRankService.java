package com.spring.library.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.library.dao.BookRankDao;

@Service
public class BookRankService {

	@Autowired
	BookRankDao bookRankDao;

	public List<HashMap<String, Object>> reviewRank() {
		return bookRankDao.reviewRank();
	}
	
	public List<HashMap<String, Object>> likeRank() {
		return bookRankDao.likeRank();
	}
	
	public List<HashMap<String, Object>> bestBookRank() {
		return bookRankDao.bestBookRank();
	}
	
}
