package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/owners")
public class OwnersController {
	@RequestMapping(value="/NownerPage", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerPage(HttpSession session, Model model) {
		System.out.println("[OwnersController.ownerPage]");
		
		
		
		
		
		
		return "owners/NownerPage";
	}
	
	@RequestMapping(value="/NownerMinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMinsert() {
		System.out.println("[OwnersController.ownerMinsert]");
		
		return "owners/NownerMinsert";
	}
	
	@RequestMapping(value="/NownerMlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMlist() {
		System.out.println("[OwnersController.ownerMlist]");
		
		return "owners/NownerMlist";
	}
	
	@RequestMapping(value="/NownerLivew", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerLivew() {
		System.out.println("[OwnersController.ownerLivew]");
		
		return "owners/NownerLivew";
	}
	
	@RequestMapping(value="/NownerStar", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerStar() {
		System.out.println("[OwnersController.ownerStar]");
		
		return "owners/NownerStar";
	}
}
