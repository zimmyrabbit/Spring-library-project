package com.spring.library.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.library.service.LibraryinfoService;

@Controller
public class LibraryInfoController {
	
	@Autowired LibraryinfoService libraryinfoService;

	@RequestMapping(value="/libraryInfo/libraryMap", method=RequestMethod.GET)
	public void libraryMap(Model model) { }
	
	@RequestMapping(value="/libraryInfo/libraryMap", method=RequestMethod.POST)
	public @ResponseBody List<HashMap<String,Object>> libraryMapProc() {
		List<HashMap<String,Object>> list = libraryinfoService.getLibraryinfoList(); 
		
		return list;
	}
}
