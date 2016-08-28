package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.four.five.domain.SafeNotice;
import com.four.five.service.SafeNoticeService;

@Controller
public class SafeNoticeController {
	@Resource
	private SafeNoticeService safeNoticeService;

	public SafeNoticeService getSafeNoticeService() {
		return safeNoticeService;
	}

	public void setSafeNoticeService(SafeNoticeService safeNoticeService) {
		this.safeNoticeService = safeNoticeService;
	}

	// 查询安全须知并返回index-newscontent.jsp页面
	@RequestMapping(value = "/SafeNotice")
	public String getSafeNotice(HttpServletRequest request) {
		SafeNotice safeNotice = safeNoticeService.getSafeNotice();
		request.setAttribute("safeNotice", safeNotice);
		return "news_query.do";
	}

	// 管理员查询安全须知
	@RequestMapping(value = "/adminSafeNotice")
	public String getAdminSafeNotice(HttpServletRequest request) {
		SafeNotice safeNotice = safeNoticeService.getSafeNotice();
		request.setAttribute("safeNotice", safeNotice);
		return "admin-order-safe.jsp";
	}

	// 添加新的安全须知
	@RequestMapping(value = "/addSafeNotice")
	public String addSafeNotice(SafeNotice safeNotice) {
		safeNoticeService.addSafeNotice(safeNotice);
		return "adminSafeNotice.do";
	}
}
