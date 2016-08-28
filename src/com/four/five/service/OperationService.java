package com.four.five.service;

import com.four.five.domain.Operation;

public interface OperationService {
	// 查询最操作指南
			public Operation getOperation();

			// 添加操作指南
			public void addOperation(Operation operation);
}
