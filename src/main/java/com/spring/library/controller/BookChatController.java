package com.spring.library.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.library.service.BookChatService;

@Controller
public class BookChatController {
	
	@Autowired
	BookChatService bookChatService;

	@RequestMapping(value="/bookChat/nonfaceDebateCollect", method=RequestMethod.GET)
	public void nonfaceDebateCollect (Model model) { 
		
		ArrayList<Map<String,Object>> list = bookChatService.getNonfaceDebateCollectList();
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectDetail", method=RequestMethod.GET)
	public void nonfaceDebateCollectDetail (Model model, int no, HttpSession session) {
		
		HashMap<String, Object> map = bookChatService.getNonfaceDebateCollectDetail(no);
		
		HashMap<String,Object> sessionInfo = (HashMap<String,Object>) session.getAttribute("loginSession");
		int userSeq = (int) sessionInfo.get("userSeq");
		
		boolean flag = bookChatService.getParticipationFlag(no, userSeq);
		
		model.addAttribute("map", map);
		model.addAttribute("flag", flag);
	}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectWrite", method=RequestMethod.GET)
	public void nonfaceDebateCollectWrite (HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		model.addAttribute("title", title);
	}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectWrite", method=RequestMethod.POST)
	public String nonfaceDebateCollectWriteProc (HttpServletRequest request, HttpSession session) {
		
		HashMap<String,Object> sessionInfo = (HashMap<String,Object>) session.getAttribute("loginSession");
		
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("userSeq", sessionInfo.get("userSeq"));
		map.put("debateTitle", request.getParameter("debateTitle"));
		map.put("colPers", request.getParameter("colPers"));
		map.put("fromDate", request.getParameter("fromDate"));
		map.put("debateCon", request.getParameter("debateCon"));
		
		bookChatService.putNonfaceDebateCollectWrite(map);
		
		return "redirect:/bookChat/nonfaceDebateCollect";
	}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectDelete", method=RequestMethod.GET)
	public String nonfaceDebateCollectDelete(int no) {
		
		bookChatService.cutNonfaceDebateCollectDelete(no);
		
		return "redirect:/bookChat/nonfaceDebateCollect";
	}
	
	@RequestMapping(value="/bookChat/joinDebate", method=RequestMethod.GET)
	public @ResponseBody int joinDebate(HttpServletRequest request) {

		HashMap<String, Integer> map = new HashMap<>();
		
		int debateSeq = Integer.parseInt(request.getParameter("debateSeq"));
		int userSeq = Integer.parseInt(request.getParameter("userSeq"));
		
		map.put("debateSeq", debateSeq);
		map.put("userSeq", userSeq);

		bookChatService.joinDebate(map);
		
		int partPers = bookChatService.getPartPers(map);
		
		return partPers;
	}
	
	@RequestMapping(value="/bookChat/cancleDebate", method=RequestMethod.GET)
	public @ResponseBody int cancleDebate(HttpServletRequest request) {
		
		HashMap<String, Integer> map = new HashMap<>();
		
		int debateSeq = Integer.parseInt(request.getParameter("debateSeq"));
		int userSeq = Integer.parseInt(request.getParameter("userSeq"));
		
		map.put("debateSeq", debateSeq);
		map.put("userSeq", userSeq);
		
		bookChatService.cancleDebate(map);
		
		int partPers = bookChatService.getPartPers(map);
		
		return partPers;
	}
	
	@RequestMapping(value="/bookChat/chat", method=RequestMethod.GET)
	public String chat() {
		return "/chat/chat";
	}

}
