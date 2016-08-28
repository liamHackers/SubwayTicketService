package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.NewDao;
import com.four.five.dao.UserDao;
import com.four.five.domain.News;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.service.NewService;

@Service
public class NewServiceImpl implements NewService {

	@Resource
	private NewDao newDao;

	public NewDao getNewDao() {
		return newDao;
	}

	public void setNewDao(NewDao newDao) {
		this.newDao = newDao;
	}

	// 查询所有新闻
	public List<News> findNews() {
		return newDao.findNews();
	}

	// 通过ID查询指定新闻
	public News getNew(int newID) {
		return newDao.getUser(newID);
	}

	// 添加新闻
	public void addNew(News news) {
		newDao.addNew(news);

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

		Page page = new Page();
		// 总记录数
		int allRow = newDao.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<News> list = newDao.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);
		return page;
	}

	// 删除新闻
	public void delNews(int newID) {
		newDao.delNews(newID);

	}

}
