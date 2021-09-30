package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.vo.OwnerVo;

@Controller
@RequestMapping(value="/owners")
public class OwnersController {

	
	
	//가게 리스트 
	@RequestMapping(value="/NownerSlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSlist() {
		System.out.println("[OwnersController.ownerSlist]");
		
		return "owners/NownerSlist";
	}
	
	//가게 등록폼
	@RequestMapping(value="/NownerSinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSinsert() {
		System.out.println("[OwnersController.ownerSinsert]");
		
		return "owners/NownerSinsert";
	}
	
	//가게 등록
	@RequestMapping(value="/storeInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInsert(@ModelAttribute OwnerVo ownerVo) {
		System.out.println("[OwnersController.storeInsert]");
		
		
		
		return "owners/NownerSinsert";
	}
	
	//가게 수정폼
	@RequestMapping(value="/NownerPage", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerPage(HttpSession session, Model model) {
		System.out.println("[OwnersController.ownerPage]");
		
		
		return "owners/NownerPage";
	}
	
	//메뉴 추가
	@RequestMapping(value="/NownerMinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMinsert() {
		System.out.println("[OwnersController.ownerMinsert]");
		
		return "owners/NownerMinsert";
	}
	
	
	
	//메뉴 리스트
	@RequestMapping(value="/NownerMlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMlist() {
		System.out.println("[OwnersController.ownerMlist]");
		
		
		
	
		return "owners/NownerMlist";
	}
	
	
	
	
	//리뷰페이지
	@RequestMapping(value="/NownerLivew", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerLivew() {
		System.out.println("[OwnersController.ownerLivew]");
		
		return "owners/NownerLivew";
	}
	
	//별점 페이지
	@RequestMapping(value="/NownerStar", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerStar() {
		System.out.println("[OwnersController.ownerStar]");
		
		return "owners/NownerStar";
	}
}
