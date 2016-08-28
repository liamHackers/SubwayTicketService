package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.BuyingNoticeDao;
import com.four.five.domain.BuyingNotice;
import com.four.five.service.BuyingNoticeService;

@Service
public class BuyingNoticeServiceImpl implements BuyingNoticeService{
	@Resource
	private BuyingNoticeDao buyingNoticeDao;
	
	
	             public void setBuyingNoticeDao(BuyingNoticeDao buyingNoticeDao) {
		this.buyingNoticeDao = buyingNoticeDao;
	}

				// 查询最新购票须知
				public BuyingNotice getBuyingNotice(){
					return buyingNoticeDao.getBuyingNotice();
				}

				// 添加购票须知
				public void addBuyingNotice(BuyingNotice buyingNotice){
					buyingNoticeDao.addBuyingNotice(buyingNotice);
				}
}
