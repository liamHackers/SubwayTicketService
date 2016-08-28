package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.CServiceDao;
import com.four.five.domain.CService;
@Repository
public class CServiceDaoImpl implements CServiceDao {

	private SessionFactory sessionFactory;
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List<CService> getCService() {
		List<CService> cService=null;
		try {
			Query query=sessionFactory.getCurrentSession().createQuery("from CService");
			cService=query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cService;
	}

}
