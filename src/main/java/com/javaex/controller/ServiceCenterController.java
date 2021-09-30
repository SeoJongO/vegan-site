package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ServiceCenterService;
import com.javaex.vo.ServiceCenterVo;

@Controller
public class ServiceCenterController {
	
	@Autowired
	private ServiceCenterService serviceCenterService;
	
	
	@RequestMapping(value="/serviceCenter", method = { RequestMethod.GET, RequestMethod.POST })
	public String serviceCenter() {
		System.out.println("[ServiceCenterController.serviceCenter]");
		
		return "serviceCenter/qna";
	}
	
	/*
	@RequestMapping(value="/question", method = { RequestMethod.GET, RequestMethod.POST })
	public String question() {
		System.out.println("[ServiceCenterController.question]");
		
		return "serviceCenter/question";
	}
	*/
	
	//신고게시글 쓰기
	@RequestMapping(value="/testquestion", method = {RequestMethod.GET, RequestMethod.POST})
	public String testQuestion(@ModelAttribute ServiceCenterVo serviceCenterVo) {
		System.out.println("serviceCenterController.testQuestion");
		System.out.println(serviceCenterVo);
		
		serviceCenterService.write(serviceCenterVo);
		
		
		return "redirect:/question";
	}
	
	//신고게시글 리스트출력
	@RequestMapping(value="/question", method = {RequestMethod.GET, RequestMethod.POST})
	public String testlist(Model model) {
		System.out.println("boardController.list");
		
		//리스트가져오기
		List<ServiceCenterVo> serviceList = serviceCenterService.serviceList();
		
		System.out.println("가져온 리스트="+serviceList);
		model.addAttribute("serviceList",serviceList);
		return "serviceCenter/question";
		
	}
	
	
}
