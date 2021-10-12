package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public int joinUser(UserVo userVo) {
		System.out.println("UserService.joinUser()");
		
		return userDao.joinUser(userVo);
	}
	
	public boolean emailCheck(String u_email) {
		System.out.println("UserService.emailCheck()");
		
		int result = userDao.emailCheck(u_email);
		
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	public UserVo getUser(UserVo userVo) {
		System.out.println("UserService.getUser()");
		
		return userDao.getUser(userVo);
	}
	
	public UserVo userInfo(int u_no) {
		System.out.println("UserService.userInfo()");
		
		return userDao.userInfo(u_no);
	}
	
	public int userUpdate(UserVo userVo) {
		System.out.println("UserService.userUpdate()");
		
		return userDao.userUpdate(userVo);
	}
	
	public String getEmail(String u_phone) {
		System.out.println("UserService.getEmail()");
		
		return userDao.getEmail(u_phone);
	}

}
