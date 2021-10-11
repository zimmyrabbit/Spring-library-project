package com.spring.library.controller;

import java.util.ArrayList;
import java.util.Map;

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
}
