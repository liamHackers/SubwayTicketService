package com.four.five.service;

import java.util.List;

import com.four.five.domain.News;
import com.four.five.domain.Page;

public interface NewService {
	// 查询所有新闻
	List<News> findNews();

	// 查询指定新闻
	public News getNew(int newID);

	// 添加新闻
	public void addNew(News news);

	// 分页获取新闻
	Page queryForPage(int currentPage, int pageSize);

	// 删除新闻
	public void delNews(int newID);
}
