package com.spring.library.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface BookChatDao {

	public ArrayList<Map<String, Object>> selectNonfaceDebateCollectList();
	
	public ArrayList<Map<String, Object>> getMypageChatList(String userSeq);

	public HashMap<String, Object> selectNonfaceDebateCollectDetail(int no);

	public int insertNonfaceDebateCollectWrite(HashMap<String, Object> map);

	public void deleteNonfaceDebateCollectDelete(int no);

	public void updatePartPers(HashMap<String, Integer> map);

	public void insertNonfaceDebate(HashMap<String, Integer> map);

	public int selectPartPers(HashMap<String, Integer> map);
	
	public int insertChatData(HashMap<String, String> map);

	public int selectParticipationFlag(@Param("no")int no, @Param("userSeq")int userSeq);

	public void minusPartPers(HashMap<String, Integer> map);

	public void updateStateOne(HashMap<String, Integer> map);

	public void updateStateZero(HashMap<String, Integer> map);

	public int insertNonfaceDebateWriter(HashMap<String, Object> map);

	

}
