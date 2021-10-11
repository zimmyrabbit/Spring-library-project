package com.spring.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LibraryInfoController {

	@RequestMapping(value="/libraryInfo/libraryMap", method=RequestMethod.GET)
	public void libraryMap() { }
}
