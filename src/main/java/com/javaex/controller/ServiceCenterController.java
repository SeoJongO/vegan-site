package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServiceCenterController {
	@RequestMapping(value="/serviceCenter", method = { RequestMethod.GET, RequestMethod.POST })
	public String serviceCenter() {
		System.out.println("[ServiceCenterController.serviceCenter]");
		
		return "serviceCenter/qna";
	}
	
	@RequestMapping(value="/question", method = { RequestMethod.GET, RequestMethod.POST })
	public String question() {
		System.out.println("[ServiceCenterController.question]");
		
		return "serviceCenter/question";
	}
	
}
