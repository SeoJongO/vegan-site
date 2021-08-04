package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.GuestbookDao;
import com.javaex.vo.GuestbookVo;

@Service
public class GuestbookService {
	
	@Autowired
	private GuestbookDao guestDao;
	
	public List<GuestbookVo> guestList() {
		System.out.println("GuestbookService.guestList()");
		
		return guestDao.guestList();
	}
	
	public int guestAdd(GuestbookVo guestVo) {
		System.out.println("GuestbookService.guestAdd()");
		
		return guestDao.guestAdd(guestVo);
	}
	
	public int guestDelete(GuestbookVo guestVo) {
		System.out.println("GuestbookService.guestDelete()");
		
		return guestDao.guestDelete(guestVo);
	}
	
	public GuestbookVo writeResultVo(GuestbookVo guestbookVo) {
		System.out.println("GuestbookService.writeResultVo()");
		
		// 글저장
		int count = guestDao.insertGuestbookKey(guestbookVo);
		
		int no = guestbookVo.getNo();
		// 글가져오기(방금등록한 번호)
		GuestbookVo resultVo = guestDao.selectGuestbook(no);
		
		return resultVo;
	}
	
	public int deleteGuest(GuestbookVo guestbookVo) {
		System.out.println("GuestbookService.deleteGuest()");
	
		int count = guestDao.deleteGuest(guestbookVo);
		
		return count;
	}
}