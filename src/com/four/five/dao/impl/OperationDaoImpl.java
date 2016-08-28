package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.OperationDao;
import com.four.five.domain.Operation;
@Repository
public class OperationDaoImpl implements OperationDao {
private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	 //查询最新操作指南
	public Operation getOperation(){
		Query query = sessionFactory.getCurrentSession().createQuery("from Operation o order by o.id desc ");
		List list=query.list();
		return (Operation) list.get(0);
	}
	//添加操作指南
	public void addOperation(Operation operation){
		sessionFactory.getCurrentSession().save(operation);
	}

}
