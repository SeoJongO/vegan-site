package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.RestaurantService;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantService restaurantService;
	
	@RequestMapping(value="/restaurantSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantSearch(Model model, @RequestParam("type") String type,
												@RequestParam(value="keyword", required=false, defaultValue="") String keyword) {
		System.out.println("[RestaurantController.restaurantSearch]");

		List<OwnerVo> storeList = restaurantService.getStoreList(type, keyword);

		model.addAttribute("storeList", storeList);

		return "restaurantSearch/restaurantSearch";
	}

	/// 가게 정보1개 가지고오기
	@RequestMapping(value = "/restaurantPage", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantPage(Model model, @RequestParam("s_no") int s_no) {
		System.out.println("[RestaurantController.restaurantPage]");

		OwnerVo ownerVo = restaurantService.getOne(s_no);
		System.out.println("컨트롤러" + ownerVo);

		model.addAttribute("ownerVo", ownerVo);

		List<ReviewVo> reviewList = ownerVo.getReviewList();
		System.out.println("dddddddd" + reviewList);
		model.addAttribute("reviewList", reviewList);

		return "store/restaurantPage";
	}

	// 리뷰 모달로 쓰기
	@RequestMapping(value = "/reviewWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewWrite(@ModelAttribute ReviewVo reviewVo) {
		System.out.println("모달 이미지" + reviewVo);

		restaurantService.insertReview(reviewVo);

		int s_no = reviewVo.getS_no();
		System.out.println(s_no);
		
		return "redirect:/restaurantPage?s_no="+s_no;
		
	}

	// 리뷰수정폼
	@RequestMapping(value = "/reviewModi", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewModi(@RequestParam("r_no") int reviewNo, Model model) {

		System.out.println("[StoreController.reviewModi]");
		System.out.println(reviewNo);

		ReviewVo reviewModi = restaurantService.reviewModi(reviewNo);

		System.out.println("리턴된 컨트롤러값=" + reviewModi);

		model.addAttribute("reviewModi", reviewModi);

		return "store/reviewModi";
	}
	
	//리뷰수정
	@RequestMapping(value="/reviewModify", method = {RequestMethod.GET,RequestMethod.POST})
	public String reviewModify(@ModelAttribute ReviewVo reviewVo) {
		System.out.println("리뷰수정=");
		System.out.println(reviewVo);
		
		restaurantService.updateModi(reviewVo);
		int s_no = reviewVo.getS_no();
		
		return "redirect:/restaurantPage?s_no="+s_no;
		
	}
	
}

