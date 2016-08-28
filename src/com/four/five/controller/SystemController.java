package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.System;
import com.four.five.service.SystemService;

@Controller
public class SystemController {
	@Resource
	private SystemService systemService;

	public SystemService getSystemService() {
		return systemService;
	}

	public void setSystemService(SystemService systemService) {
		this.systemService = systemService;
	}
	//查询关于系统并返回system-aboutsystem.jsp页面
		@RequestMapping(value="/system")
		public String getSystem(HttpServletRequest request){
			System system=systemService.getSystem();
			request.setAttribute("system", system);
			return "system-aboutsystem.jsp";		
		}
		//添加新的票务简介
		@RequestMapping(value="/addSystem")
		public String addSystem(System system){
			systemService.addSystem(system);
			return "admin-order-aboutsystem.jsp";		
		}

}
