package com.four.five.dao;

import java.util.List;

import com.four.five.domain.Notice;

public interface NoticeDao {
	// 查询新发布4条公告
	List<Notice> findNotice();

	// 指定查询公告
	public Notice getNotice(int noticeID);

	// 分页查询通告
	List<Notice> queryForPage(int offset, int length);

	// 获得通告表的总记录数
	int getAllRowCount();

	// 获取最新公告发布公告
	public Notice getNewNotice();

	// 添加公告
	public void addNotice(Notice notice);

	// 删除公告
	public void delNotice(int noticeID);
}
