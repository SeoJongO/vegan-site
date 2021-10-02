package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.restaurantDao;
import com.javaex.vo.OwnerVo;

@Service
public class restaurantService {

	
	@Autowired
	private restaurantDao restaurantDao;
	
	
	
	public OwnerVo getOne(int s_no) {
		System.out.println("레스토랑서비스");
		System.out.println(s_no);
		OwnerVo ownerVo= restaurantDao.getOne(s_no);
		
		
		return ownerVo;
		
		
	}

}
