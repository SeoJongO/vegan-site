package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.GuestbookVo;

@Repository
public class GuestbookDao {
	
	@Autowired
	public SqlSession sqlSession;
	
	public List<GuestbookVo> guestList() {
		System.out.println("GuestbookDao.guestList()");
		
		return sqlSession.selectList("guestbook.selectGuestList");
	}
	
	public int guestAdd(GuestbookVo guestVo) {
		System.out.println("GuestbookDao.guestAdd()");
		
		return sqlSession.insert("guestbook.guestInsert", guestVo);
	}
	
	public int guestDelete(GuestbookVo guestVo) {
		System.out.println("GuestbookDao.guestDelete()");
		
		return sqlSession.delete("guestbook.guestDelete", guestVo);
	}
	
	public int insertGuestbookKey(GuestbookVo guestVo) {
		System.out.println("GuestbookDao.insertGuestbookKey()");
		
		return sqlSession.insert("guestbook.insertGuestbookKey", guestVo);
	}
	
	public GuestbookVo selectGuestbook(int no) {
		System.out.println("GuestbookDao.selectGuestbook()");
		
		return sqlSession.selectOne("guestbook.selectGuestbook", no);
	}
	
	public int deleteGuest(GuestbookVo guestbookVo) {
		System.out.println("GuestbookDao.deleteGuest");
		
		return sqlSession.delete("guestbook.guestDelete", guestbookVo);
	}

}