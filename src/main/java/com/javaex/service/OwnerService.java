package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.OwnerDao;
import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;
import com.javaex.vo.ReviewVo;

@Service
public class OwnerService {

	@Autowired
	private OwnerDao ownerDao;

	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerService.storeInsert()");

		MultipartFile file = ownerVo.getFile();

		String saveDir = "C:\\veganLogo\\";

		// 원파일이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: " + exName);
		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName: " + saveName);
		// 파일저장위치
		String filePath = saveDir + saveName;
		System.out.println("filePath: " + filePath);
		// 파일사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize: " + fileSize);
		// 파일 서버하드디스크에 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일정보를 db에 저장
		ownerVo.setS_img(saveName);
		
		System.out.println("service"+ownerVo);

		return ownerDao.storeInsert(ownerVo);
	}

	public List<OwnerVo> storeList(int u_no) {
		System.out.println("OwnerService.storeList()");

		return ownerDao.storeList(u_no);
	}

	public OwnerVo getStore(int s_no) {
		System.out.println("OwnerService.getStore()");

		return ownerDao.getStore(s_no);
	}

	public int storeDelete(int s_no) {
		System.out.println("OwnerService.storeDelete()");

		return ownerDao.storeDelete(s_no);
	}

	public int storeModify(OwnerVo ownerVo) {
		System.out.println("OwnerService.storeModify()");

		return ownerDao.storeModify(ownerVo);
	}

	public MenuVo getMenu(int m_no) {
		System.out.println("OwnerService.getMenu()");

		return ownerDao.getMenu(m_no);
	}

	public int menuModify(MenuVo menuVo) {
		System.out.println("OwnerService.menuModify()");

		return ownerDao.menuModify(menuVo);
	}

	public int menuInsert(MenuVo menuVo) {
		System.out.println("OwnerService.menuInsert()");

		System.out.println(menuVo);
		
		MultipartFile file2 = menuVo.getFile2();

		String saveDir = "C:\\veganLogo\\";

		// 원파일이름
		String orgName = file2.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		// 확장자
		String exName = file2.getOriginalFilename().substring(file2.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: " + exName);
		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName: " + saveName);
		// 파일저장위치
		String filePath = saveDir + saveName;
		System.out.println("filePath: " + filePath);
		// 파일사이즈
		long fileSize = file2.getSize();
		System.out.println("fileSize: " + fileSize);
		// 파일 서버하드디스크에 저장
		try {
			byte[] fileData = file2.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일정보를 db에 저장
		menuVo.setM_imge(saveName);
		
		System.out.println("service"+menuVo);

		
		
		return ownerDao.menuInsert(menuVo);
	}

	public int menuDelete(int m_no) {
		System.out.println("OwnerService.menuDelete()");

		return ownerDao.menuDelete(m_no);
	}

	public List<MenuVo> menuList(int s_no) {
		System.out.println("OwnerService.menuList()");

		return ownerDao.menuList(s_no);
	}

	public List<ReviewVo> reviewList(int s_no) {
		System.out.println("OwnerService.storeList()");

		return ownerDao.reviewList(s_no);
	}
	
	public ReviewVo count(int s_no) {
		System.out.println("OwnerService.count()");

		return ownerDao.count(s_no);
	}
	
	public List<ReviewVo> date(ReviewVo dateVo2) {
		System.out.println("OwnerService.date()");

		return ownerDao.date(dateVo2);
	}
	
	public ReviewVo star1(int s_no) {
		System.out.println("OwnerService.star1()");

		return ownerDao.star1(s_no);
	}
	
	public ReviewVo star2(int s_no) {
		System.out.println("OwnerService.star2()");

		return ownerDao.star2(s_no);
	}
	
	public ReviewVo star3(int s_no) {
		System.out.println("OwnerService.star3()");

		return ownerDao.star3(s_no);
	}
	
	public ReviewVo star4(int s_no) {
		System.out.println("OwnerService.star4()");

		return ownerDao.star4(s_no);
	}
	public ReviewVo star5(int s_no) {
		System.out.println("OwnerService.star5()");

		return ownerDao.star5(s_no);
	}
	
	public ReviewVo hartAvg(int s_no) {
		System.out.println("OwnerService.hartAvg()");

		return ownerDao.hartAvg(s_no);
	}
	
	
}
