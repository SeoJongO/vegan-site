package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SampleController {
	
	@RequestMapping(value="/sample01", method = { RequestMethod.GET, RequestMethod.POST })
	public String sample01() {
		System.out.println("[SampleController.sample01]");
		
		return "sample/sample01";
	}
	
	
	@RequestMapping(value="/sample02", method = { RequestMethod.GET, RequestMethod.POST })
	public String sample02() {
		System.out.println("[SampleController.sample02]");
		
		return "sample/sample02";
	}

}
