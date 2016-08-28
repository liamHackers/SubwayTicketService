package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.MessageBoadDao;
import com.four.five.domain.MessageBoad;
import com.four.five.domain.News;
import com.four.five.domain.Page;
import com.four.five.service.MessageBoadService;

@Service
public class MessageBoadServiceImpl implements MessageBoadService {
	@Resource
	private MessageBoadDao messageBoadDao;

	public MessageBoadDao getMessageBoadDao() {
		return messageBoadDao;
	}

	public void setMessageBoadDao(MessageBoadDao messageBoadDao) {
		this.messageBoadDao = messageBoadDao;
	}

	// 查询所有留言板
	public List<MessageBoad> findMessage() {

		return messageBoadDao.findMessage();
	}

	// 添加留言信息
	public void addMessage(MessageBoad messageBoad) {
		messageBoadDao.addMessage(messageBoad);

	}

	// 分页查询留言
	@SuppressWarnings("unchecked")
	@Override
	public Page queryForPage(int currentPage, int pageSize) {
		Page page = new Page();
		// 总记录数
		int allRow = messageBoadDao.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<MessageBoad> list = messageBoadDao.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);
		return page;
	}

	@Override
	public void updatemessageBoad(MessageBoad messageBoad) {
		messageBoadDao.updatemessageBoad(messageBoad);
		
	}

	

}
