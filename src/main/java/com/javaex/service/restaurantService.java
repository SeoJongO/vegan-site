package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.restaurantDao;
import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;

@Service
public class restaurantService {

	@Autowired
	private restaurantDao restaurantDao;
	//상세페이지 한개 메뉴리스트 출력

	public List<OwnerVo> getStoreList(String keyword) {
		System.out.println("restaurantService.getStoreList()");

		return restaurantDao.getStoreList(keyword);
	}

	public OwnerVo getOne(int s_no) {
		System.out.println("레스토랑서비스");
		System.out.println(s_no);
		OwnerVo ownerVo = restaurantDao.getOne(s_no);

		// 메뉴리스트
		List<MenuVo> menuList = restaurantDao.getMenuList(s_no);
		System.out.println(menuList);

		ownerVo.setMenuList(menuList);
		System.out.println("최종vo"+ownerVo);
		
		
		//리뷰리스트
		List<ReviewVo> reviewList = restaurantDao.getReviewList(s_no);
		ownerVo.setReviewList(reviewList);
		
		System.out.println("리뷰리스트@@@@@@@@@@"+reviewList);
		
		


		System.out.println("최종vo" + ownerVo);


		return ownerVo;
	}


	//리뷰쓰기
	public String insertReview(ReviewVo reviewVo) {
		System.out.println("리뷰쓰기서비스"+reviewVo);
		
		//리뷰이미지 저장위치
		String saveDir = "C:\\veganReview";
		
		MultipartFile file = reviewVo.getFile();
		System.out.println("파일"+file);
		
		System.out.println(file.getSize());
		
		//파일 서버하드 저장 // 파일정보를 db에 저장
		
		//원래파일이름
		String orgName =file.getOriginalFilename();
		System.out.println("파일원래이름:"+orgName);
		
		//확정자 = .jpg
		String exName =file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:"+exName);
		
		//지정파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString()+exName;
		System.out.println("saveName:"+saveName);
		
		//파일패스
		String filePath = saveDir+"\\"+saveName;
		System.out.println("filePaht:"+filePath);
		
		//파일사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize:"+fileSize);
		
		//파일을 서버의 하드 디스크에 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);
			
			bout.write(fileData);
			bout.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		reviewVo.setSaveName(saveName);
		
		System.out.println(reviewVo);
		
		restaurantDao.insertReview(reviewVo);
		
		return null;
		
		
	}

	//리뷰수정
	public ReviewVo reviewModi(int reviewNo) {
		System.out.println("리뷰서비스"+reviewNo);
		
		ReviewVo reviewVo = restaurantDao.reviewModi(reviewNo);
		System.out.println(reviewVo);
		return reviewVo;
		
		
	}

}
