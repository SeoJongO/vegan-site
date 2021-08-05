package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.GalleryService;
import com.javaex.vo.GalleryVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="/gallery")
public class GalleryController {

	@Autowired
	private GalleryService galleryService;
	
	@RequestMapping(value="/list", method= {RequestMethod.GET, RequestMethod.POST} )
	public String list(Model model) {
		System.out.println("GalleryController.list()");
		
		List<GalleryVo> galleryVo = galleryService.galleryList();
		System.out.println(galleryVo);
		model.addAttribute("galleryVo", galleryVo);
		
		return "gallery/list";
	}
	
	@RequestMapping(value="/upload", method= {RequestMethod.GET, RequestMethod.POST} )
	public String upload(HttpSession session, @RequestParam("file") MultipartFile file, @RequestParam("content") String content) {
		System.out.println("GalleryController.upload()");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		int user_no = authUser.getNo();
		
		galleryService.restore(user_no, file, content);
		
		return "redirect:/gallery/list";
	}
	
}
