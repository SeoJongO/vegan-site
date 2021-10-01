package com.javaex.dao;

import java.util.List;

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
	
	public List<OwnerVo> storeList(int u_no) {
		System.out.println("OwnerDao.storeList()");
		
		return sqlSession.selectList("owner.storeList", u_no);
	}
	
	public OwnerVo getStore(int s_no) {
		System.out.println("OwnerDao.getStore()");

		return sqlSession.selectOne("owner.getStore", s_no);
	}
	
	public int storeDelete(int s_no) {
		System.out.println("OwnerDao.storeDelete()");
		
		return sqlSession.delete("owner.storeDelete", s_no);
	}
	
	public int storeModify(OwnerVo ownerVo) {
		System.out.println("OwnerDao.storeModify()");
		
		return sqlSession.update("owner.storeModify", ownerVo);
	}

}
