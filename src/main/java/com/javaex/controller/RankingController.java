package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RankingController {
	@RequestMapping(value="/ranking", method = { RequestMethod.GET, RequestMethod.POST })
	public String ranking() {
		System.out.println("[RankingController.ranking]");
		
		return "ranking/ranking";
	}
}
