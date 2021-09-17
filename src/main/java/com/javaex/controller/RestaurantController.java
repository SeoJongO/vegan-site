package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestaurantController {

	@RequestMapping(value="/restaurantSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantSearch() {
		System.out.println("[RestaurantController.restaurantSearch]");
		
		return "restaurantSearch/restaurantSearch";
	}
	
	@RequestMapping(value="/restaurantPage", method = { RequestMethod.GET, RequestMethod.POST })
	public String restaurantPage() {
		System.out.println("[RestaurantController.restaurantPage]");
		
		return "store/restaurantPage";
	}
	
	@RequestMapping(value="/reviewModi", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewModi() {
		System.out.println("[StoreController.reviewModi]");
		
		return "store/reviewModi";
	}
	
}
