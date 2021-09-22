package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int joinUser(UserVo userVo) {
		System.out.println("UserDao.joinUser()");
		
		return sqlSession.insert("user.joinUser", userVo);
	}
	
	public UserVo getUser(UserVo userVo) {
		System.out.println("UserDao.getUser()");
		
		return sqlSession.selectOne("user.getUser", userVo);
	}
	
	public UserVo userInfo(int user_no) {
		System.out.println("UserDao.userInfo()");
		
		return sqlSession.selectOne("user.userInfo", user_no);
	}
	
	public int userUpdate(UserVo userVo) {
		System.out.println("UserDao.userUpdate()");
		
		System.out.println(userVo);
		
		return sqlSession.update("user.userUpdate", userVo);
	}

}
