package com.four.five.dao;

import java.util.List;

import com.four.five.domain.CService;

public interface CServiceDao {
	//通过客服id号获取客服信息
	public List<CService> getCService();

}
