package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.ConpanyIntroduction;
import com.four.five.domain.SafeNotice;
import com.four.five.service.ConpanyIntroductionService;

@Controller
public class ConpanyIntroductionController {
	@Resource
	private ConpanyIntroductionService conpanyIntroductionService;

	public ConpanyIntroductionService getConpanyIntroductionService() {
		return conpanyIntroductionService;
	}

	public void setConpanyIntroductionService(
			ConpanyIntroductionService conpanyIntroductionService) {
		this.conpanyIntroductionService = conpanyIntroductionService;
	}

	// 查询公司简介
	@RequestMapping(value = "/getConpanyIntroduction")
	public String getSafeNotice(HttpServletRequest request) {
		ConpanyIntroduction conpanyIntroduction = conpanyIntroductionService
				.getConpanyIntroduction();
		request.setAttribute("conpanyIntroduction", conpanyIntroduction);
		return "notice_query.do";
	}

	// 添加公司简介
	@RequestMapping(value = "/addConpanyIntroduction")
	public String addSafeNotice(ConpanyIntroduction conpanyIntroduction, HttpServletRequest request) {
		
		conpanyIntroductionService.addConpanyIntroduction(conpanyIntroduction);;
		return "admin-order-conpanyintroduction.jsp";
	}

}
