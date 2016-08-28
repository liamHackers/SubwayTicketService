package com.four.five.dao;

import java.util.List;

import com.four.five.domain.News;

public interface NewDao {
	// 查询所有新闻
	List<News> findNews();

	// 查询指定新闻
	public News getUser(int newID);

	// 添加新闻
	public void addNew(News news);

	// 分页查询新闻
	List<News> queryForPage(int offset, int length);

	// 获得新闻表的总记录数
	int getAllRowCount();

	// 删除新闻
	public void delNews(int NewID);
}
