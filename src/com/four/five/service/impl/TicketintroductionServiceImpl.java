package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.TicketintroductionDao;
import com.four.five.domain.Ticketintroduction;
import com.four.five.service.TicketintroductionService;
@Service
public class TicketintroductionServiceImpl implements TicketintroductionService{
	@Resource
	private TicketintroductionDao ticketintroductionDao;
	        // 查询最新票务简介
			public Ticketintroduction getTicketintroduction(){
				return ticketintroductionDao.getTicketintroduction();
			}

			// 添加票务简介
			public void addTicketintroduction(Ticketintroduction ticketintroduction){
				ticketintroductionDao.addTicketintroduction(ticketintroduction);
			}

}
