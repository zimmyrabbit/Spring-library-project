package com.spring.library.dao;

import java.util.HashMap;
import java.util.List;

public interface BookRankDao {


	public List<HashMap<String, Object>> reviewRank();

	public List<HashMap<String, Object>> likeRank();
	
	public List<HashMap<String, Object>> bestBookRank();


}
