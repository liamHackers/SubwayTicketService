package com.four.five.dao;

import com.four.five.domain.Admin;

public interface AdminDao {

	//登录
	public Admin getAdmin(String aName,String password);
	
}
