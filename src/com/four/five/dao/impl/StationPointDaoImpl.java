package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import com.four.five.dao.StationPointDao;
import com.four.five.domain.StationPoint;
@Repository
public class StationPointDaoImpl implements StationPointDao{

	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Test
	public StationPoint getStationName(String stationName) {
		Query query=sessionFactory.getCurrentSession().createQuery("from StationPoint u where u.stationName=?");
		query.setString(0, stationName);
		List<StationPoint> stationPoint = query.list();
		return stationPoint.get(0);
	}


	
	
	
}
