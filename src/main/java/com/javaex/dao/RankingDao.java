package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.OwnerVo;

@Repository
public class RankingDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<OwnerVo> rankingList(){
		
		return sqlSession.selectList("ranking.rankingList");
	}
	

}
