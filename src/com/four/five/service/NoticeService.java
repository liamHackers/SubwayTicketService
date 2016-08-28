package com.four.five.service;

import java.util.List;

import com.four.five.domain.Notice;
import com.four.five.domain.Page;

public interface NoticeService {
	// 查询新发布四条公告
	List<Notice> findNotice();

	// 查询指定公告
	public Notice getNotice(int noticeID);

	// 分页获取公告
	Page queryForPage(int currentPage, int pageSize);

	// 获取最新公告发布公告
	public Notice getNewNotice();

	// 添加公告
	public void addNotice(Notice notice);

	// 删除公告
	public void delNotice(int noticeID);
}
