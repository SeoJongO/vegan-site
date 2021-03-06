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

import com.javaex.service.OwnerService;
import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;
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

		if (count > 0) {
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
	public String ownerMinsert(Model model, HttpSession session, @RequestParam("s_no") int s_no) {
		System.out.println("[OwnersController.ownerMinsert]");
		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		OwnerVo ownerVo = ownerService.getStore(s_no);

		List<OwnerVo> sList = ownerService.storeList(u_no);
		model.addAttribute("storeList", sList);

		model.addAttribute("ownerU", ownerVo);

		return "owners/NownerMinsert";
	}

	// 메뉴 등록(s_no xml에 임의값 넣음)
	@RequestMapping(value = "/menuInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInsert(MenuVo menuVo) {
		System.out.println("[OwnersController.menuInsert]");

		System.out.println(menuVo);

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
		System.out.println(sList);

		int s_no = sList.get(0).getS_no();
		System.out.println(s_no);

		List<MenuVo> mList = ownerService.menuList(s_no);

		System.out.println(mList);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", sList.get(0));

		model.addAttribute("menuList", mList);

		return "owners/NownerMlist";
	}

	@RequestMapping(value = "/NownerSmlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerMlist(Model model, HttpSession session, @RequestParam("shop") int s_no) {
		System.out.println("[OwnersController.ownerSmlist]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		System.out.println(s_no);

		List<MenuVo> mList = ownerService.menuList(s_no);
		System.out.println(mList);

		OwnerVo storeVo = ownerService.getStore(s_no);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", storeVo);

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

	// 메뉴 수정
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

	// 메뉴 삭제
	@RequestMapping(value = "/menuDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public String menuDelete(@RequestParam("m_no") int m_no) {
		System.out.println("[OwnersController.storeDelete]");

		int count = ownerService.menuDelete(m_no);

		return "redirect:/owners/NownerMlist";
	}

	// 리뷰페이지
	@RequestMapping(value = "/NownerLivew", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerLivew(Model model, HttpSession session) {
		System.out.println("[OwnersController.ownerLivew]");
		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		int s_no = sList.get(0).getS_no();
		System.out.println(s_no);

		List<ReviewVo> rList = ownerService.reviewList(s_no);
		System.out.println(rList);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", sList.get(0));

		model.addAttribute("reviewList", rList);

		ReviewVo cList = ownerService.count(s_no);
		System.out.println(cList);
		
		model.addAttribute("countList", cList);
		
		ReviewVo hart = ownerService.hartAvg(s_no);
		model.addAttribute("hartAvg", hart);
		System.out.println(hart);

		return "owners/NownerLivew";
	}

	@RequestMapping(value = "/NownerSlivew", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerlivew(Model model, HttpSession session, @RequestParam("shop") int s_no) {
		System.out.println("[OwnersController.ownerSmlist]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		System.out.println(s_no);

		List<ReviewVo> rList = ownerService.reviewList(s_no);
		System.out.println(rList);

		OwnerVo storeVo = ownerService.getStore(s_no);

		ReviewVo cList = ownerService.count(s_no);
		System.out.println(cList);
		System.out.println(s_no);

		model.addAttribute("countList", cList);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", storeVo);

		model.addAttribute("reviewList", rList);
		
		ReviewVo hart = ownerService.hartAvg(s_no);
		model.addAttribute("hartAvg", hart);
		System.out.println(hart);

		return "owners/NownerLivew";

	}

	@RequestMapping(value = "/NownerDate", method = { RequestMethod.GET, RequestMethod.POST })
	public String date(Model model, HttpSession session, @RequestParam("s_no") int s_no,
			@RequestParam("sDate") String sDate, @RequestParam("rDate") String rDate) {
		System.out.println("[OwnersController.date]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		System.out.println(s_no);

		List<ReviewVo> rList = ownerService.reviewList(s_no);
		System.out.println(rList);

		OwnerVo storeVo = ownerService.getStore(s_no);

		ReviewVo cList = ownerService.count(s_no);
		System.out.println(cList);
		System.out.println(s_no);

		model.addAttribute("countList", cList);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", storeVo);

		model.addAttribute("reviewList", rList);

		ReviewVo dateVo2 = new ReviewVo(sDate, rDate, s_no);

		List<ReviewVo> dateVo = ownerService.date(dateVo2);
		model.addAttribute("dateList", dateVo);

		model.addAttribute("dateList2", dateVo2);

		System.out.println(dateVo);
		System.out.println(sDate);
		System.out.println(rDate);
		
		ReviewVo hart = ownerService.hartAvg(s_no);
		model.addAttribute("hartAvg", hart);
		System.out.println(hart);

		return "owners/NownerLivew2";
	}

	// 별점 페이지
	@RequestMapping(value = "/NownerStar", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerStar(Model model, HttpSession session) {
		System.out.println("[OwnersController.ownerStar]");
		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		int s_no = sList.get(0).getS_no();
		System.out.println(s_no);

		ReviewVo cList = ownerService.count(s_no);
		System.out.println(cList);
		
		ReviewVo star1 = ownerService.star1(s_no);
		System.out.println(star1);
		ReviewVo star2 = ownerService.star2(s_no);
		System.out.println(star2);
		ReviewVo star3 = ownerService.star3(s_no);
		System.out.println(star3);
		ReviewVo star4 = ownerService.star4(s_no);
		System.out.println(star4);
		ReviewVo star5 = ownerService.star5(s_no);
		System.out.println(star5);
		

		model.addAttribute("countList", cList);
		model.addAttribute("storeList", sList);
		model.addAttribute("star1", star1);
		model.addAttribute("star2", star2);
		model.addAttribute("star3", star3);
		model.addAttribute("star4", star4);
		model.addAttribute("star5", star5);
		
		ReviewVo hart = ownerService.hartAvg(s_no);
		model.addAttribute("hartAvg", hart);
		System.out.println(hart);

		

		return "owners/NownerStar";
	}
	

	@RequestMapping(value = "/NownerSstar", method = { RequestMethod.GET, RequestMethod.POST })
	public String ownerStar(Model model, HttpSession session, @RequestParam("shop") int s_no) {
		System.out.println("[OwnersController.ownerSmlist]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int u_no = userVo.getU_no();

		List<OwnerVo> sList = ownerService.storeList(u_no);
		System.out.println(sList);

		System.out.println(s_no);


		OwnerVo storeVo = ownerService.getStore(s_no);

		ReviewVo cList = ownerService.count(s_no);
		System.out.println(cList);
		System.out.println(s_no);

		model.addAttribute("countList", cList);

		model.addAttribute("storeList", sList);

		model.addAttribute("storeVo", storeVo);

		
		ReviewVo star1 = ownerService.star1(s_no);
		System.out.println(star1);
		ReviewVo star2 = ownerService.star2(s_no);
		System.out.println(star2);
		ReviewVo star3 = ownerService.star3(s_no);
		System.out.println(star3);
		ReviewVo star4 = ownerService.star4(s_no);
		System.out.println(star4);
		ReviewVo star5 = ownerService.star5(s_no);
		System.out.println(star5);
		

		model.addAttribute("countList", cList);
		model.addAttribute("storeList", sList);
		model.addAttribute("star1", star1);
		model.addAttribute("star2", star2);
		model.addAttribute("star3", star3);
		model.addAttribute("star4", star4);
		model.addAttribute("star5", star5);
		
		ReviewVo hart = ownerService.hartAvg(s_no);
		model.addAttribute("hartAvg", hart);
		System.out.println(hart);


		return "owners/NownerStar";

	}

	@ResponseBody
	@RequestMapping(value = "/getStore", method = { RequestMethod.GET, RequestMethod.POST })
	public OwnerVo emailCheck(@RequestParam("s_no") int s_no) {
		System.out.println("[OwnersController.getStore()]");

		OwnerVo storeVo = ownerService.getStore(s_no);

		return storeVo;
	}	

}
