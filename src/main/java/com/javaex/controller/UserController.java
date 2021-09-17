package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@RequestMapping(value="/checkTerm", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkTerm() {
		System.out.println("[UserController.checkTerm()]");
		
		return "user/checkTerm";
	}
	
	@RequestMapping(value="/joinForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinForm() {
		System.out.println("[UserController.joinForm()]");
		
		return "user/joinForm";
	}
	
	@RequestMapping(value="/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm() {
		System.out.println("[UserController.loginForm()]");
		
		return "user/loginForm";
	}
	
	@RequestMapping(value="/checkPassword", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkPassword() {
		System.out.println("[UserController.checkPassword()]");
		
		return "user/checkPassword";
	}
	
	@RequestMapping(value="/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm() {
		System.out.println("[UserController.modifyForm()]");
		
		return "user/modifyForm";
	}
	
	@RequestMapping(value="/likeShopList", method = { RequestMethod.GET, RequestMethod.POST })
	public String likeShopList() {
		System.out.println("[UserController.likeShopList()]");
		
		return "user/likeShopList";
	}
	
	@RequestMapping(value="/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String review() {
		System.out.println("[UserController.review()]");
		
		return "user/review";
	}
	
	@RequestMapping(value="/addShop", method = { RequestMethod.GET, RequestMethod.POST })
	public String addShop() {
		System.out.println("[UserController.addShop()]");
		
		return "user/addShop";
	}
	
	@RequestMapping(value="/findEmail", method = { RequestMethod.GET, RequestMethod.POST })
	public String findEmail() {
		System.out.println("[UserController.findEmail()]");
		
		return "user/findEmail";
	}
	
	@RequestMapping(value="/findEmailSuccess", method = { RequestMethod.GET, RequestMethod.POST })
	public String findEmailSuccess() {
		System.out.println("[UserController.findEmailSuccess()]");
		
		return "user/findEmailSuccess";
	}
	
	@RequestMapping(value="/changePassword", method = { RequestMethod.GET, RequestMethod.POST })
	public String findPassword() {
		System.out.println("[UserController.changePassword()]");
		
		return "user/changePassword";
	}
	
	@RequestMapping(value="/findPassword", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkAuthNumber() {
		System.out.println("[UserController.findPassword()]");
		
		return "user/findPassword";
	}
	
}
