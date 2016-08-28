package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.SafeNoticeDao;
import com.four.five.domain.SafeNotice;

@Repository
public class SafeNoticeDaoImpl implements SafeNoticeDao{
	
    private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//查询最新安全须知
	public SafeNotice getSafeNotice() {
		Query query=sessionFactory.getCurrentSession().createQuery("from SafeNotice n order by n.safenoticeID desc ");
		List list=query.list();
		return (SafeNotice) list.get(0);
	}

	//添加安全须知
	public void addSafeNotice(SafeNotice safeNotice) {
		sessionFactory.getCurrentSession().save(safeNotice);		
	}

}
