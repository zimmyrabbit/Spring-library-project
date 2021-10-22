package com.spring.library.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.library.service.BookReviewService;
import com.spring.library.service.UserService;

@Controller
public class BookReviewController {
	
	@Autowired
	BookReviewService bookReviewService;
	
	@Autowired
	UserService userService;

	@RequestMapping(value="/bookReview/reviewList", method=RequestMethod.GET)
	public void reviewList(Model model) { 
		
		List<HashMap<String,Object>> list = bookReviewService.getBookReviewList();
		
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/bookReview/reviewRank", method=RequestMethod.GET)
	public void reviewRank() { }
	
	@RequestMapping(value="/bookReview/reviewWrite", method=RequestMethod.GET)
	public void bookReviewWrite(HttpServletRequest request, Model model) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("title", request.getParameter("title"));
		map.put("isbn", request.getParameter("isbn"));
		map.put("bookIntro", request.getParameter("bookIntro"));
		map.put("bookImg", request.getParameter("bookImg"));
		map.put("bookUrl", request.getParameter("bookUrl"));
		
		model.addAttribute("map", map);
		
	}
	
	@RequestMapping(value="/bookReview/reviewWrite", method=RequestMethod.POST)
	public String bookReviewWriteProc(HttpServletRequest request, Model model, HttpSession session) {
		
		HashMap<String,Object> sessionInfo = (HashMap<String,Object>) session.getAttribute("loginSession");
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("title", request.getParameter("title"));
		map.put("isbn", request.getParameter("isbn"));
		map.put("bookIntro", request.getParameter("bookIntro"));
		map.put("bookImg", request.getParameter("bookImg"));
		map.put("bookUrl", request.getParameter("bookUrl"));
		map.put("bookRev", request.getParameter("bookRev"));
		map.put("userSeq", sessionInfo.get("userSeq"));
		
		bookReviewService.putBookReviewWrite(map);
		
		return "redirect:/bookReview/reviewList";
		
	}
	
	@RequestMapping(value="/bookReview/reviewDetail", method=RequestMethod.GET)
	public void bookReviewDetail(Model model, int reviewSeq, HttpServletRequest request, HttpSession session) {
		
		HashMap<String,Object> map = bookReviewService.getBookReviewDetail(reviewSeq);
		model.addAttribute("map", map);
		
		HashMap<String,Object> sessionInfo = (HashMap<String,Object>) session.getAttribute("loginSession");
		HashMap<String, Object> like = new HashMap<>();
		like.put("userId", sessionInfo.get("userSeq"));
		like.put("reviewSeq", reviewSeq);
		
		model.addAttribute("like", bookReviewService.likeDtl(like));
	}
	
	@RequestMapping(value="/bookChat/bookReviewDelete", method=RequestMethod.GET)
	public String bookReviewDelete(String board_id) {
		
		HashMap<String,String> map = new HashMap<>();
		
		map.put("board_id", board_id);
		
		userService.bookreviewRemove(map);
		
		return "redirect:/bookReview/reviewList";
	}
	
	@RequestMapping(value="/bookReview/like", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> likeSwap(@RequestParam HashMap<String, String> formData,
			ModelMap model, HttpServletRequest request) {
		
		int cnt = bookReviewService.likeSwap(formData);
		
		if( cnt > 0) {
			formData.put("proc", "success");
		}else {
			formData.put("proc", "fail");
		}
		
		return formData;
	}
}
