package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.ConpanyIntroductionDao;
import com.four.five.domain.ConpanyIntroduction;

@Repository
public class ConpanyIntroductionDaoImpl implements ConpanyIntroductionDao {
	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 查询公司简介
	public ConpanyIntroduction getConpanyIntroduction() {
		Query query = sessionFactory.getCurrentSession().createQuery("from ConpanyIntroduction n order by n.conID desc ");
		List list=query.list();
		return (ConpanyIntroduction) list.get(0);
	}

	// 添加公司简介
	public void addConpanyIntroduction(ConpanyIntroduction conpanyIntroduction) {
		sessionFactory.getCurrentSession().save(conpanyIntroduction);

	}

}
