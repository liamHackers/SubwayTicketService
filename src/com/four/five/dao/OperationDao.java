package com.four.five.dao;

import com.four.five.domain.Operation;

public interface OperationDao {
	        //查询操作指南
			public Operation getOperation();
			//添加操作指南
			public void addOperation(Operation operation);

}
