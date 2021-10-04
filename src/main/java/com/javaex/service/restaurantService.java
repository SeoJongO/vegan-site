package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.restaurantDao;
import com.javaex.vo.MenuVo;
import com.javaex.vo.OwnerVo;

@Service
public class restaurantService {

	
	@Autowired
	private restaurantDao restaurantDao;
	
	
	
	public OwnerVo getOne(int s_no) {
		System.out.println("레스토랑서비스");
		System.out.println(s_no);
		OwnerVo ownerVo= restaurantDao.getOne(s_no);
		
		
		
		//메뉴리스트
		List<MenuVo> menuList = restaurantDao.getMenuList(s_no);
		System.out.println(menuList);
		
		
		ownerVo.setMenuList(menuList);
		
		
		System.out.println("최종vo"+ownerVo);
		
		
		return ownerVo;
		
		
	}

}
