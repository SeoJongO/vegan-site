package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ServiceCenterDao;
import com.javaex.vo.ServiceCenterVo;

@Service
public class ServiceCenterService {

	@Autowired
	private ServiceCenterDao serviceCenterDao;
	
	
	
	//신고하기 쓰기
	public ServiceCenterVo write(ServiceCenterVo serviceCenterVo) {
		
		System.out.println("serviceCenterService="+serviceCenterVo);
		
		serviceCenterDao.write(serviceCenterVo);
		
		return serviceCenterVo;
		
	}
	
	
	//리스트 가져오기
	public  List<ServiceCenterVo> serviceList(int authUserNo){
		
		List<ServiceCenterVo> serviceList = serviceCenterDao.serviceList(authUserNo);
		
		return serviceList;
		
	}
	
	//자기글만 보이게 하기
	
	
	
}
