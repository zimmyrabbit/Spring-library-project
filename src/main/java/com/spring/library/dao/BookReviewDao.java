package com.spring.library.dao;

import java.util.HashMap;
import java.util.List;

public interface BookReviewDao {

	public void insertBookReviewWrtie(HashMap<String, Object> map);

	public List<HashMap<String, Object>> selectBookReviewList();



}
