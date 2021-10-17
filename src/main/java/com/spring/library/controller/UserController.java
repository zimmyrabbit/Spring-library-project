package com.spring.library.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.Map;
import org.springframework.util.StringUtils;
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
import com.spring.library.service.UserService;
import com.spring.library.util.HashNMacUtil;

@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;

	@RequestMapping(value="/user/userReg", method=RequestMethod.GET)
	public void nonfaceDebateCollect (Model model, HttpServletRequest request) { 
		
		
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
}
