package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.OwnerVo;

@Repository
public class restaurantDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<OwnerVo> getStoreList(String keyword) {
		System.out.println("restaurantDao.getStoreList()");
		
		return sqlSession.selectList("restaurant.getStoreList", keyword);
	}
	
	
	public OwnerVo getOne(int s_no) {
		
		OwnerVo ownerVo = sqlSession.selectOne("restaurant.getOne", s_no);
		System.out.println("리턴된 vo"+ownerVo);
		return ownerVo;
		
	}
	
	
	
}
