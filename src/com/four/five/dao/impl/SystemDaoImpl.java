package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.SystemDao;
import com.four.five.domain.System;

@Repository
public class SystemDaoImpl implements SystemDao{
private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//查询关于系统
	public System getSystem(){
		Query query = sessionFactory.getCurrentSession().createQuery("from System s order by s.id desc ");
		List list=query.list();
		return (System) list.get(0);
	}
	//添加关于系统
	public void addSystem(System system){
		sessionFactory.getCurrentSession().save(system);
	}

}
