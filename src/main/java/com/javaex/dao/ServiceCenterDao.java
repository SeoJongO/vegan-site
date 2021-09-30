package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ServiceCenterVo;


@Repository
public class ServiceCenterDao {

	@Autowired
	private SqlSession sqlSession;
	
	//신고게시글 쓰기
	public ServiceCenterVo write(ServiceCenterVo serviceCenterVo) {
		System.out.println("ServiceCenterDao="+serviceCenterVo);
		
		sqlSession.insert("serviceCenter.write",serviceCenterVo);
		
		
		return serviceCenterVo;
		
		
	}
	
	
	//게시글 리스트 가져오기
	public List<ServiceCenterVo> serviceList(){
		
		List<ServiceCenterVo> serviceList = sqlSession.selectList("serviceCenter.list");
		
		System.out.println(serviceList);
		
		return serviceList;
		
	}
	
	

}
