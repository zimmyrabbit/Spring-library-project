package com.spring.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value="/user/userReg", method=RequestMethod.GET)
	public void nonfaceDebateCollect (Model model) { }
}
