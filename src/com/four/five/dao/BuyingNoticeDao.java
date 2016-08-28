package com.four.five.dao;

import com.four.five.domain.BuyingNotice;

public interface BuyingNoticeDao {
	//查询购票须知
	public BuyingNotice getBuyingNotice();
	//添加购票须知
	public void addBuyingNotice(BuyingNotice buyingNotice);

}
