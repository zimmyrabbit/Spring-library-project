package com.spring.library.dao;

import java.util.HashMap;
import java.util.List;

public interface BookReviewDao {

	public void insertBookReviewWrtie(HashMap<String, Object> map);

	public List<HashMap<String, Object>> selectBookReviewList();

	public List<HashMap<String, Object>> getMyPageReviewList(String userSeq);

	public HashMap<String, Object> selectBookReviewDetail(int reviewSeq);

}
