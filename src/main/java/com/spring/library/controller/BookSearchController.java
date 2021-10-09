package com.spring.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookSearchController {

	@RequestMapping(value="/library/bookSearch", method=RequestMethod.GET)
	public void bookSearch() { }
}
