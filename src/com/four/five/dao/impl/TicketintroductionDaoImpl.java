package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.TicketintroductionDao;
import com.four.five.domain.Ticketintroduction;

@Repository
public class TicketintroductionDaoImpl implements TicketintroductionDao{
	
	private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	    //查询最新票务简介
		public Ticketintroduction getTicketintroduction(){
			Query query = sessionFactory.getCurrentSession().createQuery("from Ticketintroduction t order by t.id desc ");
			List list=query.list();
			return (Ticketintroduction) list.get(0);
		}
		//添加票务简介
		public void addTicketintroduction(Ticketintroduction ticketintroduction){
			sessionFactory.getCurrentSession().save(ticketintroduction);
		}
}
