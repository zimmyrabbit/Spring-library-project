package com.spring.library.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.library.service.BookRankService;

@Controller
public class RankController {
	
	@Autowired
	BookRankService service;
	
	@RequestMapping(value="/bookReview/reviewRank", method=RequestMethod.GET)
	public void reviewRank(Model model) {
		
		List<HashMap<String, Object>> review = service.reviewRank();
		List<HashMap<String, Object>> like = service.likeRank();
		List<HashMap<String, Object>> bestBook = service.bestBookRank();
		
		model.addAttribute("review", review);
		model.addAttribute("like", like);
		model.addAttribute("bestBook", bestBook);
	}
	
	
}
