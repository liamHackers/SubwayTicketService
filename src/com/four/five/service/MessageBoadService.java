package com.four.five.service;

import java.util.List;

import com.four.five.domain.MessageBoad;
import com.four.five.domain.Page;

public interface MessageBoadService {

	// 查询所有留言板
	List<MessageBoad> findMessage();

	// 添加留言信息
	public void addMessage(MessageBoad messageBoad);

	// 分页查询留言
	Page queryForPage(int offset, int length);

	// 管理员回复留言信息
	public void updatemessageBoad(MessageBoad messageBoad);
}
