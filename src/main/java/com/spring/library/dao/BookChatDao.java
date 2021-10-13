package com.spring.library.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public interface BookChatDao {

	public ArrayList<Map<String, Object>> selectNonfaceDebateCollectList();

	public HashMap<String, Object> selectNonfaceDebateCollectDetail(int no);

	public void insertNonfaceDebateCollectWrite(HashMap<String, Object> map);

	public void deleteNonfaceDebateCollectDelete(int no);

}
