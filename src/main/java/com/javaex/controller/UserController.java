package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
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
	
	@RequestMapping(value="/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("[UserController.join()]");
		
		int count = userService.joinUser(userVo);
		
		if(count > 0) {
			System.out.println("회원가입 성공");
			return "return:/user/joinOK";
		} else {
			System.out.println("회원가입 실패");
		}
		
		return "/main";
	}
	
	@RequestMapping(value="/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm() {
		System.out.println("[UserController.loginForm()]");
		
		return "user/loginForm";
	}
	
	@RequestMapping(value="/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
		System.out.println("[UserController.login()]");
		
		UserVo userVo = new UserVo(email, password);
		
		UserVo authUser = userService.getUser(userVo);
		
		System.out.println(authUser);
		
		if (authUser != null) {
			System.out.println("login success");
			session.setAttribute("authUser", authUser);
			return "redirect:/main";
		} else {
			System.out.println("login fail");
			return "redirect:/user/loginForm?result=fail";
		}
		
	}
	
	@RequestMapping(value="/checkPassword", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkPassword() {
		System.out.println("[UserController.checkPassword()]");
		
		return "user/checkPassword";
	}
	
	@RequestMapping(value="/passwordCheck", method = { RequestMethod.GET, RequestMethod.POST })
	public String passwordCheck(HttpSession session, @RequestParam("password") String InputPassword) {
		System.out.println("[UserController.passwordCheck()]");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		
		String userPassword = userVo.getPassword();
		
		if(userPassword.equals(InputPassword)) {
			return "redirect:/user/modifyForm";
		} else {
			return "redirect:/user/checkPassword?result=fail";
		}
		
	}
	
	@RequestMapping(value="/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm(HttpSession session, Model model) {
		System.out.println("[UserController.modifyForm()]");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		UserVo userInfo = userService.userInfo(authUser.getUser_No());
		
		model.addAttribute("userInfo", userInfo);
		
		return "user/modifyForm";
	}
	
	@RequestMapping(value="/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[UserController.modify()]");
		
		System.out.println(userVo);
		
		int count = userService.userUpdate(userVo);
		
		if(count > 0) {
			System.out.println("수정 성공");
			session.setAttribute("authUser", userVo);
			return "redirect:/main";
		} else {
			System.out.println("수정 실패");
			return "user/modifyForm";
		}
		
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
	public String findEmailSuccess(@RequestParam("phonenumber") String phonenumber, Model model) {
		System.out.println("[UserController.findEmailSuccess()]");
		
		String userEmail = userService.getEmail(phonenumber);
		
		model.addAttribute("userEmail", userEmail);
		
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

	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		System.out.println("[UserController.logout()]");

		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/main";
	}
}
