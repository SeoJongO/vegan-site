package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.GalleryDao;
import com.javaex.vo.GalleryVo;

@Service
public class GalleryService {

	@Autowired
	private GalleryDao galleryDao;
	
	public List<GalleryVo> galleryList() {
		System.out.println("GalleryService.galleryList()");
		
		return galleryDao.galleryList();
	};
	
	public int restore(int user_no, MultipartFile file, String content) {
		System.out.println("GalleryService.restore()");
		
		return galleryDao.restore(user_no, file, content);
	};
	
	public GalleryVo read(int no) {
		System.out.println("GalleryService.read()");
		
		return galleryDao.read(no);
	}
	
	public int delete(int no) {
		System.out.println("GalleryService.delete()");
		
		return galleryDao.delete(no);
	}
}
