package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.RankingService;
import com.javaex.vo.OwnerVo;

@Controller
public class RankingController {
	
	@Autowired
	private RankingService rankingService;
	
	
	@RequestMapping(value="/ranking", method = { RequestMethod.GET, RequestMethod.POST })
	public String ranking(Model model) {
		System.out.println("[RankingController.ranking]");
		
		List<OwnerVo> rList = rankingService.rankingList();
		
		
		System.out.println(rList);
		model.addAttribute("storeList", rList);
		
		return "ranking/ranking";
	}
}
