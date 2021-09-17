package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {

	@RequestMapping(value="/storePage", method = { RequestMethod.GET, RequestMethod.POST })
	public String storePage() {
		System.out.println("[StoreController.storePage]");
		
		return "store/storePage";
	}
	

	
}
