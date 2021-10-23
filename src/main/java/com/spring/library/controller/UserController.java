package com.spring.library.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.library.service.BookChatService;
import com.spring.library.service.BookReviewService;
import com.spring.library.service.UserService;
import com.spring.library.util.HashNMacUtil;

@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	@Autowired
	BookChatService bookChatService;
	
	@Autowired
	BookReviewService bookReviewService;

	@RequestMapping(value="/user/userReg", method=RequestMethod.GET)
	public void userReg (Model model, HttpServletRequest request) {	
		
		model.addAttribute("login", request.getParameter("btn"));
	}

	// 회원가입 데이터 insert
	@SuppressWarnings("static-access")
	@RequestMapping(value = "/user/joinSuccess.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> UserJoinSuccess(@RequestParam Map<String, String> formData, ModelMap model,
			HttpServletRequest request) throws Exception {
	
		Map<String, String> map = new HashMap<String, String>();
	
		String password = (String) formData.get("password");
	
		formData.put("password", HashNMacUtil.EncBySha256(password));
	
	
		int insertResult = userService.joinUser(formData);

		if (insertResult == 1) {
			map.put("proc", "success");
		} else {
			throw new Exception();
		}
	
		return map;
	}
	
	
	@RequestMapping(value = "/user/joinIdCheck.do")
	@ResponseBody
	public Map<String, Object> UserJoinIdCheck(ModelMap model, @RequestParam("id") String id,
			HttpServletRequest request) throws Exception {
	
		Map<String, Object> map = new HashMap<String, Object>();
	
		String idResult = userService.userJoinIdCheck(id);
		if (id.equals(idResult)) {
			map.put("data", "EXIST");
		} else if (!id.equals(idResult)) {
			map.put("data", "SUCCESS");
		}
	
		return map;
	}	
	
	
	// 로그인
	@RequestMapping(value = "/user/loginSuccess.do")
	@ResponseBody  
	public Map<String, String> UserLoginSuccess(ModelMap model, HttpServletRequest request,
			@RequestParam Map<String, String> formData) throws Exception {

		String password = (String) formData.get("password");
		
		formData.put("password", HashNMacUtil.EncBySha256(password));
		
		Map<String, String> map = new HashMap<String, String>();
		Map<String, String> result = new HashMap<String, String>();
		
		map = userService.userLogin(formData);
		
		HttpSession session = request.getSession(true);
		
		if (!StringUtils.isEmpty(map)) {
			session.setAttribute("loginSession", map);
			result.put("data", "SUCCESS");
		} else if(StringUtils.isEmpty(map)){
			result.put("data", "FAIL");
		}else {
			throw new Exception();
		}

		return result;
	}	
	
	@RequestMapping(value = "/user/logout.do", method=RequestMethod.GET)
	public String UserLogOut(ModelMap model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession(true);
		session.removeAttribute("loginSession");
		
		return "redirect:/";
	}	
	
	@RequestMapping(value = "/user/userMyPage", method=RequestMethod.GET)
	public void userMyPage(ModelMap model, HttpServletRequest request, HttpSession session) throws Exception { 
		
		HashMap<String,Object> sessionInfo = (HashMap<String,Object>) session.getAttribute("loginSession");
		String seq = sessionInfo.get("userSeq").toString();
		
		if(sessionInfo.get("userId").toString().equals("adminmaster")) {
			List<Map<String, String>> list = userService.userList();
			model.addAttribute("list", list);
			List<Map<String, String>> bbsList = userService.bbsList();
			model.addAttribute("bbsList", bbsList);
		}else {
			ArrayList<Map<String,Object>> chatList = bookChatService.getMypageChatList(seq);
			model.addAttribute("chatList", chatList);
			
			List<HashMap<String,Object>> reviewList = bookReviewService.getMyPageReviewList(seq);
			model.addAttribute("reviewList", reviewList);
		}
		
		if(request.getParameter("bbs_admin") != null) {
			model.addAttribute("bbs_admin", request.getParameter("bbs_admin"));
		}
		
	}	
	
	
	@RequestMapping(value= "/user/bbsRemove", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> bbsRemove(@RequestParam Map<String, String> formData,
			ModelMap model, HttpServletRequest request) throws Exception { 
		
		String table = formData.get("table_nm");
		int cnt = 0;
		
		if(table.equals("bookreview")) {
			cnt = userService.bookreviewRemove(formData);
		}else {
			cnt = userService.nonfacedebatecollectRemove(formData);
		}
		
		Map<String, String> map = new HashMap();
		
		if(cnt > 0) {
			map.put("proc", "success");
		}else {
			map.put("proc", "fail");
		}
		
		return map;
	}
	
	
	
	@RequestMapping(value= "/user/userUpdate", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> userUpdate(@RequestParam Map<String, String> formData,
			ModelMap model, HttpServletRequest request) throws Exception { 
		
		String password = (String) formData.get("password_cur");
		formData.put("password", HashNMacUtil.EncBySha256(password));
	
		int result = userService.userUpdate(formData);
		Map<String, String> map = new HashMap();
		if(result == 1) {
			map.put("proc", "success");
		}else {
			map.put("proc", "fail");
		}
		
		return map;
	}
	
	
	@RequestMapping(value= "/user/userPassWDupdate", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> userPassWDupdate(@RequestParam Map<String, String> formData,
			ModelMap model, HttpServletRequest request) throws Exception { 
		
		String password_update = (String) formData.get("password_update");
		String password = (String) formData.get("password");
		formData.put("password", HashNMacUtil.EncBySha256(password));
		formData.put("password_update", HashNMacUtil.EncBySha256(password_update));

		int result = userService.userPassWDupdate(formData);
		
		Map<String, String> map = new HashMap();
		if(result == 1) {
			map.put("proc", "success");
		}else {
			map.put("proc", "fail");
		}
		return map;
	}
	
	@RequestMapping(value= "/user/adminPasswd", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> adminPasswd(@RequestParam Map<String, String> formData,
			ModelMap model, HttpServletRequest request) throws Exception { 
		
		String password_update = (String) formData.get("password_update");
		formData.put("password_update", HashNMacUtil.EncBySha256(password_update));
		int result = userService.userPassWDupdate(formData);
		
		Map<String, String> map = new HashMap();
		if(result == 1) {
			map.put("proc", "success");
		}else {
			map.put("proc", "fail");
		}
		return map;
	}
	
	@RequestMapping(value="/user/chartData", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> chartDate() {
		
		HashMap<String,Object> userMap = userService.getUserJoinData();
		
		HashMap<String,Object> reviewMap = userService.getReviewCnt();
		
		Map<String,Object> map = new HashMap<>();
		
		map.put("user", userMap);
		map.put("rev", reviewMap);
		
		return map;
	}
}
