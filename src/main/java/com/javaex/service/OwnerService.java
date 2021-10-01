package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OwnerDao;
import com.javaex.vo.OwnerVo;

@Service
public class OwnerService {
	
	@Autowired
	private OwnerDao ownerDao;
	
	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerService.storeInsert()");
		
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

}
