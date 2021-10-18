package com.spring.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookReviewController {

	@RequestMapping(value="/bookReview/reviewList", method=RequestMethod.GET)
	public void reviewList() { }
	
	@RequestMapping(value="/bookReview/reviewRank", method=RequestMethod.GET)
	public void reviewRank() { }
}
