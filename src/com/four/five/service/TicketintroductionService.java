package com.four.five.service;

import com.four.five.domain.Ticketintroduction;

public interface TicketintroductionService {
	    // 查询最新票务简介
		public Ticketintroduction getTicketintroduction();

		// 添加票务简介
		public void addTicketintroduction(Ticketintroduction ticketintroduction);

}
