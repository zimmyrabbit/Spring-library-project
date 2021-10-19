package com.spring.library.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.library.dao.BookReviewDao;

@Service
public class BookReviewService {

	@Autowired
	BookReviewDao bookReviewDao;

	public void putBookReviewWrite(HashMap<String, Object> map) {

		bookReviewDao.insertBookReviewWrtie(map);
	}


}
