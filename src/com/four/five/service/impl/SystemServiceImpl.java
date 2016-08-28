package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.SystemDao;
import com.four.five.domain.System;
import com.four.five.service.SystemService;
@Service
public class SystemServiceImpl implements SystemService{
	@Resource
	private SystemDao systemDao;
	 // 查询最新关于系统信息
	public System getSystem(){
		return systemDao.getSystem();
	}

	// 添加关于系统信息
	public void addSystem(System system){
		systemDao.addSystem(system);
	}
	

}
