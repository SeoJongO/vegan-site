package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.restaurantService;
import com.javaex.vo.OwnerVo;

@Controller
public class RestaurantController {

	@Autowired
	private restaurantService restaurantService;
	
	@RequestMapping(value="/restaurantSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantSearch() {
		System.out.println("[RestaurantController.restaurantSearch]");
		
		return "restaurantSearch/restaurantSearch";
	}
	
	@RequestMapping(value="/restaurantPage", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantPage(Model model) {
		System.out.println("[RestaurantController.restaurantPage]");
		
		int s_no = 12;
		
		
		
		OwnerVo ownerVo=restaurantService.getOne(s_no);
		System.out.println("컨트롤러"+ownerVo);
		
		model.addAttribute("ownerVo", ownerVo);
		
		return "store/restaurantPage";
	}
	
	@RequestMapping(value="/reviewModi", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewModi() {
		System.out.println("[StoreController.reviewModi]");
		
		return "store/reviewModi";
	}
	
}
