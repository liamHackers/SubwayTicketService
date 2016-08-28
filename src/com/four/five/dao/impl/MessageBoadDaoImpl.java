package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.MessageBoadDao;
import com.four.five.domain.MessageBoad;
import com.four.five.domain.News;

@Repository
public class MessageBoadDaoImpl implements MessageBoadDao {
	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 查询3条留言板内容
	public List<MessageBoad> findMessage() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from MessageBoad n order by n.messageID desc ");
		query.setFirstResult(0);
		query.setMaxResults(3);
		List<MessageBoad> messageBoad = query.list();
		return messageBoad;
	}

	// 添加留言信息
	public void addMessage(MessageBoad messageBoad) {
		sessionFactory.getCurrentSession().save(messageBoad);

	}

	//分页查询所有留言
	public List<MessageBoad> queryForPage(int offset, int length) {
		List<MessageBoad> messageBoad = null;
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from MessageBoad n order by n.messageID desc ");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			messageBoad = query.list();

		} catch (RuntimeException re) {
			throw re;
		}

		return messageBoad;
	}

	//查询记录条数
	public int getAllRowCount() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from MessageBoad");
		List list = query.list();
		return list.size();
	}

	//通过更新content2来回复用户留言
	public void updatemessageBoad(MessageBoad messageBoad) {
		Query query=sessionFactory.getCurrentSession().createQuery("update MessageBoad l set l.content2=? ");
		query.setLong(0, messageBoad.getMessageID());
	}

}
