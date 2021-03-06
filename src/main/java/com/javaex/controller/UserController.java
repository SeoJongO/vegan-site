package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;
import com.javaex.vo.ReviewPageVo;
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
	
	@ResponseBody
	@RequestMapping(value = "/emailCheck", method = { RequestMethod.GET, RequestMethod.POST })
	public boolean emailCheck(@RequestParam("u_email") String u_email) {
		System.out.println("[UserController.emailCheck()]");

		boolean state = userService.emailCheck(u_email);

		return state;
	}	
	
	@RequestMapping(value="/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("[UserController.join()]");
		
		int count = userService.joinUser(userVo);
		
		if(count > 0) {
			System.out.println("회원가입 성공");
			return "redirect:/user/joinOK";
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
	public String login(@RequestParam("u_email") String u_email, @RequestParam("u_password") String u_password, HttpSession session) {
		System.out.println("[UserController.login()]");
		
		UserVo userVo = new UserVo(u_email, u_password);
		
		UserVo authUser = userService.getUser(userVo);
		
		System.out.println("어쓰유저"+authUser);
		
		if (authUser != null) {
			System.out.println("로그인 성공");
			session.setAttribute("authUser", authUser);
			return "redirect:/main";
		} else {
			System.out.println("로그인 실패");
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
		
		String userPassword = userVo.getU_password();
		
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
		
		UserVo userInfo = userService.userInfo(authUser.getU_no());
		
		model.addAttribute("userInfo", userInfo);
		
		return "user/modifyForm";
	}
	
	@RequestMapping(value="/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[UserController.modify()]");
		
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
	public String review(HttpSession session, Model model) {
		System.out.println("[UserController.review()]");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		
		int u_no = userVo.getU_no();
		
		List<ReviewPageVo> reviewList = userService.getReview(u_no);
		
		System.out.println(reviewList);
			
		model.addAttribute("reviewList", reviewList);
		
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
	public String findEmailSuccess(@RequestParam("phonenumber") String u_phone, Model model) {
		System.out.println("[UserController.findEmailSuccess()]");
		
		String userEmail = userService.getEmail(u_phone);
		
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
	
	@RequestMapping(value="/joinOK", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinOk() {
		System.out.println("[UserController.joinOk()]");
		
		return "user/joinOk";
	}
}
