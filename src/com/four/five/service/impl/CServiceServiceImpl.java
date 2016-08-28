package com.four.five.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.CServiceDao;
import com.four.five.domain.CService;
import com.four.five.service.CServiceService;
@Service
public class CServiceServiceImpl implements CServiceService,Serializable{

	@Resource
	private CServiceDao cserviceDao;
	
	
	public CServiceDao getCserviceDao() {
		return cserviceDao;
	}


	public void setCserviceDao(CServiceDao cserviceDao) {
		this.cserviceDao = cserviceDao;
	}


	@Override
		public List<CService> getCService(){
		List<CService> cService=cserviceDao.getCService();
		return cService;
	}

}
