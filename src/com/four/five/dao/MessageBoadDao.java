package com.four.five.dao;

import java.util.List;

import com.four.five.domain.Line;
import com.four.five.domain.MessageBoad;
import com.four.five.domain.News;

public interface MessageBoadDao {
	// 查询所有留言板
	List<MessageBoad> findMessage();

	// 添加留言信息
	public void addMessage(MessageBoad messageBoad);

	// 分页查询留言
	List<MessageBoad> queryForPage(int offset, int length);

	// 获得留言的总记录数
	int getAllRowCount();

	// 管理员回复留言信息
	public void updatemessageBoad(MessageBoad messageBoad);

}
