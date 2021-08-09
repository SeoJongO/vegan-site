package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public UserVo getUser(UserVo userVo) {
		System.out.println("UserService.getUser()");
		
		return userDao.selectUser(userVo);
	}	
	
	public int insertUser(UserVo userVo) {
		System.out.println("UserService.insertUser()");
		
		return userDao.joinUser(userVo);
	}
	
	public UserVo userInfo(int no) {
		System.out.println("UserService.userInfo()");
		
		return userDao.userInfo(no);
	}
	
	public int userUpdate(UserVo userVo) {
		System.out.println("UserService.userUpdate()");
		
		return userDao.userUpdate(userVo);
	}
	
	public boolean getUser(String id) {
		System.out.println("UserService.getUser()");
		
		UserVo userVo = userDao.getUser(id);
		
		if( userVo == null) {
			return true;
		} else {
			return false;
		}
	}
}
