package com.four.five.service;

import com.four.five.domain.ConpanyIntroduction;

public interface ConpanyIntroductionService {
	// 查询公司简介
	public ConpanyIntroduction getConpanyIntroduction();

	// 添加公司简介
	public void addConpanyIntroduction(ConpanyIntroduction conpanyIntroduction);
}
