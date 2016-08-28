package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.AdminDao;
import com.four.five.domain.Admin;
@Repository
public class AdminDaoImpl implements AdminDao{

	private SessionFactory sessionFactory;
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	//登录
	@Override
	public Admin getAdmin(String aName, String password) {
		Query query=sessionFactory.getCurrentSession().createQuery("from Admin a where a.aName=? and a.password=?");
		query.setString(0, aName);
		query.setString(1, password);
		List<Admin> admins=query.list();
		if (admins.size()!=0) {
			return admins.get(0);
		}else {
			return null;
		}
		
	}
	
	
}
