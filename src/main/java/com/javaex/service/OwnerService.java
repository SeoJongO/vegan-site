package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OwnerDao;
import com.javaex.vo.OwnerVo;

@Service
public class OwnerService {
	
	@Autowired
	private OwnerDao ownerDao;
	
	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnersController.storeInsert()");
		
		return ownerDao.storeInsert(ownerVo);
	}

}
