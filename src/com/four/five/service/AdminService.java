package com.four.five.service;

import com.four.five.domain.Admin;

public interface AdminService {

	//登录
	public Admin getAdmin(String aName,String password);
	
}
