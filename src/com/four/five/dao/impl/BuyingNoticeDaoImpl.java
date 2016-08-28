package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.BuyingNoticeDao;
import com.four.five.domain.BuyingNotice;
@Repository
public class BuyingNoticeDaoImpl implements BuyingNoticeDao {
private SessionFactory sessionFactory;	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//查询购票须知
		public BuyingNotice getBuyingNotice(){
			Query query = sessionFactory.getCurrentSession().createQuery("from BuyingNotice b order by b.id desc ");
			List list=query.list();
			return (BuyingNotice) list.get(0);
		}
		//添加购票须知
		public void addBuyingNotice(BuyingNotice buyingNotice){
			sessionFactory.getCurrentSession().save(buyingNotice);
		}

}
