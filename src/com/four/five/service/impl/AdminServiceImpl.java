package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.AdminDao;
import com.four.five.domain.Admin;
import com.four.five.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;
	@Resource
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	

	//登录
	@Override
	public Admin getAdmin(String aName, String password) {
		
		Admin admin=adminDao.getAdmin(aName, password);
		System.out.println("admin==>"+admin);
		
			return admin;
		

	}

}
