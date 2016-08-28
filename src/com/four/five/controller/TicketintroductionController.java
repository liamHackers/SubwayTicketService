package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.SafeNotice;
import com.four.five.domain.Ticketintroduction;
import com.four.five.service.SafeNoticeService;
import com.four.five.service.TicketintroductionService;

@Controller
public class TicketintroductionController {
	@Resource
	private TicketintroductionService ticketintroductionService;

	public TicketintroductionService getTicketintroductionService() {
		return ticketintroductionService;
	}

	public void setTicketintroductionService(TicketintroductionService ticketintroductionService) {
		this.ticketintroductionService = ticketintroductionService;
	}
	//查询票务简介并返回system-ticketintroduction.jsp页面
	@RequestMapping(value="/ticketintroduction")
	public String getTicketintroduction(HttpServletRequest request){
		Ticketintroduction ticketintroduction=ticketintroductionService.getTicketintroduction();
		request.setAttribute("ticketintroduction", ticketintroduction);
		return "system-ticketintroduction.jsp";		
	}
	//添加新的票务简介
	@RequestMapping(value="/addTicketintroduction")
	public String addTicketintroduction(Ticketintroduction ticketintroduction){
		ticketintroductionService.addTicketintroduction(ticketintroduction);
		return "admin-order-ticketintroduction.jsp";		
	}

}
