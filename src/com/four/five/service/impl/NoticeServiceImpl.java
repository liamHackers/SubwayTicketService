package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.NoticeDao;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Resource
	private NoticeDao noticeDao;

	public NoticeDao getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	// 查询所有新闻
	public List<Notice> findNotice() {
		return noticeDao.findNotice();
	}

	// 通过ID查询指定新闻
	public Notice getNotice(int noticeID) {
		return noticeDao.getNotice(noticeID);
	}

	/**
	 * 分页查询
	 * 
	 * @param currentPage
	 *            当前页号：现在显示的页数
	 * @param pageSize
	 *            每页显示的记录条数
	 * @return 封闭了分页信息(包括记录集list)的Bean
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public Page queryForPage(int currentPage, int pageSize) {
		// TODO Auto-generated method stub

		Page page = new Page();
		// 总记录数
		int allRow = noticeDao.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<Notice> list = noticeDao.queryForPage(offset, pageSize);

		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);

		return page;
	}

	// 获取最新公告发布公告
	public Notice getNewNotice() {
		return noticeDao.getNewNotice();

	}

	// 添加公告
	public void addNotice(Notice notice) {
		noticeDao.addNotice(notice);

	}

	// 删除新闻
	public void delNotice(int noticeID) {
		noticeDao.delNotice(noticeID);

	}

}
