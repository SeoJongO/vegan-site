package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public UserVo selectUser(UserVo userVo) {
		System.out.println("UserDao.selectUser()");
		
		return sqlSession.selectOne("user.selectUser", userVo);
	}
	
	public int joinUser(UserVo userVo) {
		System.out.println("UserDao.joinUser()");
		
		return sqlSession.insert("user.joinUser", userVo);
	}
	
	public UserVo userInfo(int no) {
		System.out.println("UserDao.userInfo()");
		
		return sqlSession.selectOne("user.userInfo", no);
	}
	
	public int userUpdate(UserVo userVo) {
		System.out.println("UserDao.userUpate()");
			
		return sqlSession.update("user.userUpdate", userVo);
	}
	
	public UserVo getUser(String id) {
		System.out.println("UserDao.getUser()");
		
		return sqlSession.selectOne("user.selectUserById",id);
	}
	
}
