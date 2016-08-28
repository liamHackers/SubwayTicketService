package com.four.five.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.NewDao;
import com.four.five.domain.News;
import com.four.five.domain.Notice;
import com.four.five.domain.User;

@Repository
public class NewDaoImpl implements NewDao{

private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//查询并排序八条新闻
	public List<News> findNews(){
		Query query = sessionFactory.getCurrentSession().createQuery("from News n order by n.newID desc ");
		query.setFirstResult(0);//��ʼ����
		query.setMaxResults(8);//ȡ����
		List<News> news = query.list();
		return news;
	}
	//ͨ查询指定ID新闻
	public News getUser(int newID) {
		Query query=sessionFactory.getCurrentSession().createQuery("from News u where u.newID=?");
		query.setInteger(0, newID);	
		return (News) query.uniqueResult();
	}

	//发布新闻
	public void addNew(News news) {
		sessionFactory.getCurrentSession().save(news);
		
	}

	//有先后发布查询所有新闻
	public List<News> queryForPage(int offset, int length) {
		List<News> noticelist = null;
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from News n order by n.newID desc ");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			noticelist = query.list();

		} catch (RuntimeException re) {
			throw re;
		}

		return noticelist;
	}

	//查询所有新闻条数
	public int getAllRowCount() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from News");
		List list = query.list();
		return list.size();
	}

	//删除新闻
	public void delNews(int NewID) {
		Query query=sessionFactory.getCurrentSession().createQuery("delete from News u where u.newID=?");
		query.setInteger(0, NewID);
		query.executeUpdate();
		
	}

	

}
