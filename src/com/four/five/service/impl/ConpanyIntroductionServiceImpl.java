package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.ConpanyIntroductionDao;
import com.four.five.domain.ConpanyIntroduction;
import com.four.five.service.ConpanyIntroductionService;

@Service
public class ConpanyIntroductionServiceImpl implements
		ConpanyIntroductionService {
	@Resource
	private ConpanyIntroductionDao conpanyIntroductionDao;

	// 查询公司简介
	public ConpanyIntroduction getConpanyIntroduction() {
		
		return conpanyIntroductionDao.getConpanyIntroduction();
	}

	// 添加公司简介
	public void addConpanyIntroduction(ConpanyIntroduction conpanyIntroduction) {
		conpanyIntroductionDao.addConpanyIntroduction(conpanyIntroduction);

	}

}
