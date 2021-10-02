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

import com.javaex.service.OwnerService;
import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/owners")
public class OwnersController {

	// 가게 리스트

	@Autowired
	private OwnerService ownerService;

	@RequestMapping(value = "/NownerSlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSlist(Model model, HttpSession session) {
		System.out.println("[OwnersController.ownerSlist]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		
		model.addAttribute("storeList", sList);

		return "owners/NownerSlist";
	}

	// 가게 등록폼
	@RequestMapping(value = "/NownerSinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerSinsert() {
		System.out.println("[OwnersController.ownerSinsert]");

		return "owners/NownerSinsert";
	}

	// 가게 등록
	@RequestMapping(value = "/storeInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInsert(@ModelAttribute OwnerVo ownerVo) {
		System.out.println("[OwnersController.storeInsert]");

		int count = ownerService.storeInsert(ownerVo);

		return "redirect:/owners/NownerSlist";
	}

	// 가게 수정폼
	@RequestMapping(value = "/NownerSmodify", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerPage(HttpSession session, Model model, @RequestParam("s_no") int s_no) {
		System.out.println("[OwnersController.NownerSmodify]");
		
		OwnerVo ownerVo = ownerService.getStore(s_no);
		
		System.out.println(ownerVo);
		
		model.addAttribute("store", ownerVo);

		return "owners/NownerSmodify";
	}
	
	@RequestMapping(value = "/storeModify", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeModify(@ModelAttribute OwnerVo ownerVo, HttpSession session, Model model) {
		System.out.println("[OwnersController.storeModify]");
		
		int count = ownerService.storeModify(ownerVo);
		
		if(count>0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
		return "redirect:/owners/NownerSlist";
	}
	
	@RequestMapping(value = "/storeDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeDelete(@RequestParam("s_no") int s_no) {
		System.out.println("[OwnersController.storeDelete]");

		int count = ownerService.storeDelete(s_no);
		
		return "redirect:/owners/NownerSlist";
	}
	
	// 메뉴 등록폼
	@RequestMapping(value = "/NownerMinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMinsert() {
		System.out.println("[OwnersController.ownerMinsert]");

		return "owners/NownerMinsert";
	}

	// 메뉴 등록(s_no xml에 임의값 넣음)
	@RequestMapping(value = "/menuInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInsert(@ModelAttribute MenuVo menuVo) {
		System.out.println("[OwnersController.menuInsert]");

		int count = ownerService.menuInsert(menuVo);

		return "redirect:/owners/NownerMlist";
	}
	
	// 메뉴 리스트(s_no xml에 임의값 넣음)
	@RequestMapping(value = "/NownerMlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMlist(Model model, HttpSession session) {
		System.out.println("[OwnersController.ownerMlist]");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		
		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		
		List<MenuVo> mList = ownerService.menuList();
		
		model.addAttribute("storeList", sList);

		model.addAttribute("menuList", mList);

		return "owners/NownerMlist";
	}

	// 메뉴 수정폼
	@RequestMapping(value = "/NownerMmodify", method = { RequestMethod.GET, RequestMethod.POST })
	public String menuModify(HttpSession session, Model model, @RequestParam("m_no") int m_no) {
		System.out.println("[OwnersController.NownerMmodify]");

		MenuVo menuVo = ownerService.getMenu(m_no);

		System.out.println(menuVo);

		model.addAttribute("menu", menuVo);

		return "owners/NownerMmodify";
	}

	//메뉴 수정
	@RequestMapping(value = "/menuModify", method = { RequestMethod.GET, RequestMethod.POST })
	public String menuModify(@ModelAttribute MenuVo menuVo, HttpSession session, Model model) {
		System.out.println("[OwnersController.storeModify]");

		int count = ownerService.menuModify(menuVo);

		if (count > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		return "redirect:/owners/NownerMlist";
	}
	
	//메뉴 삭제
	@RequestMapping(value = "/menuDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public String menuDelete(@RequestParam("m_no") int m_no) {
		System.out.println("[OwnersController.storeDelete]");

		int count = ownerService.menuDelete(m_no);

		return "redirect:/owners/NownerMlist";
	}
	
	
	
	

	// 리뷰페이지
	@RequestMapping(value = "/NownerLivew", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerLivew() {
		System.out.println("[OwnersController.ownerLivew]");

		return "owners/NownerLivew";
	}

	// 별점 페이지
	@RequestMapping(value = "/NownerStar", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerStar() {
		System.out.println("[OwnersController.ownerStar]");

		return "owners/NownerStar";
	}
}
