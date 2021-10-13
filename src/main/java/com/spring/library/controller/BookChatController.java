package com.spring.library.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public void nonfaceDebateCollectDetail (Model model, int no) {
		
		HashMap<String, Object> map = bookChatService.getNonfaceDebateCollectDetail(no);
		
		model.addAttribute("map", map);
	}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectWrite", method=RequestMethod.GET)
	public void nonfaceDebateCollectWrite () {}
	
	@RequestMapping(value="/bookChat/nonfaceDebateCollectWrite", method=RequestMethod.POST)
	public String nonfaceDebateCollectWriteProc (HttpServletRequest request) {
		
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("userSeq", 1);
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
}
