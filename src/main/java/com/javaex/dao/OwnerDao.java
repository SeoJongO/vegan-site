package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.OwnerVo;

@Repository
public class OwnerDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int storeInsert(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeInsert()");
		
		System.out.println(ownerVo);
		
		return sqlSession.insert("owner.storeInsert", ownerVo);
	}

}
