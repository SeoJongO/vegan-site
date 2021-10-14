package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ReviewPageVo;
import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int joinUser(UserVo userVo) {
		System.out.println("UserDao.joinUser()");
		
		return sqlSession.insert("user.joinUser", userVo);
	}
	
	public int emailCheck(String u_email) {
		System.out.println("UserDao.emailChk");
		
		return sqlSession.selectOne("user.emailChk", u_email);
	}
	
	public UserVo getUser(UserVo userVo) {
		System.out.println("UserDao.getUser()");
		
		return sqlSession.selectOne("user.getUser", userVo);
	}
	
	public UserVo userInfo(int u_no) {
		System.out.println("UserDao.userInfo()");
		
		return sqlSession.selectOne("user.userInfo", u_no);
	}
	
	public int userUpdate(UserVo userVo) {
		System.out.println("UserDao.userUpdate()");
		
		return sqlSession.update("user.userUpdate", userVo);
	}
	
	public String getEmail(String u_phone) {
		System.out.println("UserDao.getEmail()");
		
		return sqlSession.selectOne("user.getEmail", u_phone);
	}
	
	public List<ReviewPageVo> getReview(int u_no) {
		System.out.println("UserDao.getReview()");
		
		return sqlSession.selectList("user.getReview", u_no);
	}

}
