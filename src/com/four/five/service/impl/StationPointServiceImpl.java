package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.StationPointDao;
import com.four.five.dao.UserDao;
import com.four.five.domain.StationPoint;
import com.four.five.service.StationPointService;
@Service
public class StationPointServiceImpl implements StationPointService{

	@Resource
	private StationPointDao stationPointDao;
	
	
	
	
	public StationPointDao getStationPointDao() {
		return stationPointDao;
	}

	public void setStationPointDao(StationPointDao stationPointDao) {
		this.stationPointDao = stationPointDao;
	}

	@Override
	public StationPoint getStationName(String stationName) {
		
		return stationPointDao.getStationName(stationName);
	}

	
	

}
