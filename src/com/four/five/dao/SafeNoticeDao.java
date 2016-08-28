package com.four.five.dao;


import com.four.five.domain.SafeNotice;


public interface SafeNoticeDao {
	//查询安全须知
	public SafeNotice getSafeNotice();
	//添加安全须知
	public void addSafeNotice(SafeNotice safeNotice);
}
