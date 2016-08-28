package com.four.five.service;

import com.four.five.domain.BuyingNotice;

public interface BuyingNoticeService {
	        // 查询最新购票须知
			public BuyingNotice getBuyingNotice();

			// 添加购票须知
			public void addBuyingNotice(BuyingNotice buyingNotice);

}
