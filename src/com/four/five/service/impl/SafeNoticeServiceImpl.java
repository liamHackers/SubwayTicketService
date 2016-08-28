package com.four.five.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.SafeNoticeDao;
import com.four.five.domain.SafeNotice;
import com.four.five.service.SafeNoticeService;

@Service
public class SafeNoticeServiceImpl implements SafeNoticeService {
	@Resource
	private SafeNoticeDao safeNoticeDao;

	// 查询安全须知
	public SafeNotice getSafeNotice() {
		return safeNoticeDao.getSafeNotice();
	}

	// 添加安全须知
	public void addSafeNotice(SafeNotice safeNotice) {
		safeNoticeDao.addSafeNotice(safeNotice);

	}

}
