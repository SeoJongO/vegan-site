package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.RankingDao;
import com.javaex.vo.OwnerVo;

@Service

public class RankingService {

	@Autowired
	private RankingDao rankingDao;

	public List<OwnerVo> rankingList() {
		System.out.println("rankingService.rankingList()");
		
		return rankingDao.rankingList();
	}
}
