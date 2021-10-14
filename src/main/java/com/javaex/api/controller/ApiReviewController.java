package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.RestaurantService;
import com.javaex.vo.ReviewVo;

@Controller
@RequestMapping(value = "/api/review")
public class ApiReviewController {

	@Autowired
	private RestaurantService restaurantService;

	/*
	 * ajax 리스트 가져오기
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/list",method =
	 * {RequestMethod.GET,RequestMethod.POST}) public List<ReviewVo> list(){
	 * System.out.println("api/reivewList");
	 * 
	 * restaurantService.reviewList();
	 * 
	 * return null;
	 * 
	 * 
	 * }
	 */

	// ajax 정보가져오기//리뷰쓰기
	@ResponseBody
	@RequestMapping(value = "/write", method = { RequestMethod.GET, RequestMethod.POST })
	public ReviewVo write(@ModelAttribute ReviewVo reviewVo) {
		System.out.println(reviewVo);
		System.out.println(reviewVo.getFile().getOriginalFilename());
		;

		MultipartFile file = reviewVo.getFile();
		System.out.println(file.getOriginalFilename());

		ReviewVo resultVo = restaurantService.insertReview(reviewVo);
		System.out.println("최종Review" + resultVo);

		return resultVo;

	}

	// 리뷰삭제
	@ResponseBody
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public int delete(@RequestParam int r_no) {
		System.out.println(r_no);
		int counter = restaurantService.reviewDelete(r_no);

		return counter;

	}

}
