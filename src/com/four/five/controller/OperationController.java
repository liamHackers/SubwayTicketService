package com.four.five.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.Operation;
import com.four.five.service.OperationService;

@Controller
public class OperationController {
	@Resource
	private OperationService operationService;

	public OperationService getOperationService() {
		return operationService;
	}

	public void setOperationService(OperationService operationService) {
		this.operationService = operationService;
	}
	//查询操作指南并返回system-operation.jsp页面
		@RequestMapping(value="/operation")
		public String getOperation(HttpServletRequest request){
			Operation operation=operationService.getOperation();
			request.setAttribute("operation", operation);
			return "system-operation.jsp";		
		}
		//添加新的操作指南
		@RequestMapping(value="/addOperation")
		public String addOperation(Operation operation){
			operationService.addOperation(operation);
			return "admin-order-operation.jsp";		
		}

}
