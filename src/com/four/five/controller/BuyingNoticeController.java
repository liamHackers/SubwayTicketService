package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.BuyingNotice;
import com.four.five.service.BuyingNoticeService;

@Controller
public class BuyingNoticeController {
	
	@Resource
	private BuyingNoticeService buyingNoticeService;


	public BuyingNoticeService getBuyingNoticeService() {
		return buyingNoticeService;
	}

	public void setBuyingNoticeService(BuyingNoticeService buyingNoticeService) {
		this.buyingNoticeService = buyingNoticeService;
	}

	// 查询购票须知并返回system-ticketintroduction.jsp页面
	@RequestMapping(value = "/buyingNotice")
	public String getBuyingNotice(HttpServletRequest request) {
		BuyingNotice buyingNotice = buyingNoticeService.getBuyingNotice();
		request.setAttribute("buyingNotice", buyingNotice);
		return "system-buyinginformation.jsp";
	}

	// 添加新的购票须知
	@RequestMapping(value = "/addBuyingNotice")
	public String addBuyingNotice(BuyingNotice buyingNotice) {
		buyingNoticeService.addBuyingNotice(buyingNotice);
		return "admin-order-buyticket.jsp";
	}
}
