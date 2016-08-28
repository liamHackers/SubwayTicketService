package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.NoticeDao;
import com.four.five.domain.News;
import com.four.five.domain.Notice;
import com.four.five.domain.User;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 查询并排序4条公告
	public List<Notice> findNotice() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Notice n order by n.noticeID desc ");
		query.setFirstResult(0);// ��ʼ����
		query.setMaxResults(4);// ȡ����
		List<Notice> notice = query.list();
		return notice;
	}

	// ͨ查询指定ID新闻
	public Notice getNotice(int noticeID) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Notice u where u.noticeID=?");
		query.setInteger(0, noticeID);
		return (Notice) query.uniqueResult();
	}

	/**
	 * 分页查询
	 * 
	 * @param hql
	 *            查询的条件
	 * @param offset
	 *            开始记录
	 * @param length
	 *            一次查询几条记录
	 * @return 返回查询记录集合
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> queryForPage(int offset, int length) {
		List<Notice> noticelist = null;
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from Notice n order by n.noticeID desc ");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			noticelist = query.list();

		} catch (RuntimeException re) {
			throw re;
		}

		return noticelist;
	}

	// 总记录数
	public int getAllRowCount() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Notice");
		List list = query.list();
		return list.size();
	}

	// 获取最新公告发布公告
	public Notice getNewNotice() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Notice n order by n.noticeID desc");
		List list = query.list();
		return (Notice) list.get(0);
	}

	// 添加公告
	public void addNotice(Notice notice) {
		sessionFactory.getCurrentSession().save(notice);

	}

	// 删除新闻
	public void delNotice(int noticeID) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"delete from Notice u where u.noticeID=?");
		query.setInteger(0, noticeID);
		query.executeUpdate();

	}

}
