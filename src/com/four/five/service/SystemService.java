package com.four.five.service;

import com.four.five.domain.System;

public interface SystemService {
	        // 查询最新关于系统信息
			public System getSystem();

			// 添加关于系统信息
			public void addSystem(System system);

}
