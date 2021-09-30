package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.OwnerService;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="/owners")
public class OwnersController {
	
	@Autowired
	private OwnerService ownerService;
	
	@RequestMapping(value="/NownerSlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSlist(Model model, HttpSession session) {
		System.out.println("[OwnersController.ownerSlist]");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		
		int u_no = userVo.getU_no();
		
		List<OwnerVo> sList = ownerService.storeList(u_no);
		
		model.addAttribute("storeList", sList);
		
		return "owners/NownerSlist";
	}
	
	@RequestMapping(value="/NownerSinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSinsert() {
		System.out.println("[OwnersController.ownerSinsert]");
		
		return "owners/NownerSinsert";
	}
	
	@RequestMapping(value="/storeInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInsert(@ModelAttribute OwnerVo ownerVo) {
		System.out.println("[OwnersController.storeInsert]");
		
		int count = ownerService.storeInsert(ownerVo);
		
		return "owners/NownerSinsert";
	}
	
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
