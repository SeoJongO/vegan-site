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
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm() {
		System.out.println("UserController.loginForm()");

		return "user/loginForm";
	}

	@RequestMapping(value = "/user/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("UserController.login()");

		UserVo authUser = userService.getUser(userVo);

		if (authUser != null) {
			System.out.println("login success");
			session.setAttribute("authUser", authUser);
			return "redirect:/main";
		} else {
			System.out.println("login fail");
			return "redirect:/user/loginForm?result=fail";
		}

	}

	@RequestMapping(value = "/user/joinForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinForm() {
		System.out.println("UserController.joinForm()");
		
		return "user/joinForm";
	}

	@RequestMapping(value = "/user/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("UserController.join()");

		int count = userService.insertUser(userVo);
		
		if(count > 0) {
			return "user/joinOk";
		} else {
			return "redirect:/user/joinForm.jsp/";
		}
		
	}

	@RequestMapping(value = "/user/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm(HttpSession session, Model model) {
		System.out.println("UserController.modifyForm()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		UserVo userInfo = userService.userInfo(authUser.getNo());
		
		model.addAttribute("userInfo", userInfo);
		
		return "user/modifyForm";
	}
	
	@RequestMapping(value = "/user/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(HttpSession session,
						 @RequestParam("no") int no,
						 @RequestParam("password") String password,
						 @RequestParam("name") String name,
						 @RequestParam("gender") String gender) {
		System.out.println("UserController.modify()");
		
		UserVo userVo = new UserVo(no, password, name, gender);
		
		int count = userService.userUpdate(userVo);
		
		if(count > 0) {
			session.setAttribute("authUser", userVo);
			return "redirect:/main";
		} else {
			return "user/modifyForm";
		}
		
	}

	@RequestMapping(value = "/user/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		System.out.println("UserController.logout()");

		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/main";
	}
}
