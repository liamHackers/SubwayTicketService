package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.OperationDao;
import com.four.five.domain.Operation;
import com.four.five.service.OperationService;
@Service
public class OperationServiceImpl implements OperationService{
	@Resource
	private OperationDao operationDao;
	
	
	public void setOperationDao(OperationDao operationDao) {
		this.operationDao = operationDao;
	}

				// 查询最操作指南
				public Operation getOperation(){
					return operationDao.getOperation();
				}

				// 添加操作指南
				public void addOperation(Operation operation){
					operationDao.addOperation(operation);
				}

}
