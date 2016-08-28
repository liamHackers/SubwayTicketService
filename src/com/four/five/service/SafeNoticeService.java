package com.four.five.service;

import com.four.five.domain.SafeNotice;

public interface SafeNoticeService {
	// 查询最新安全须知
	public SafeNotice getSafeNotice();

	// 添加安全须知
	public void addSafeNotice(SafeNotice safeNotice);
}
