package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.LineDao;
import com.four.five.domain.Line;
@Repository
public class LineDaoImpl implements LineDao {
	
	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public List<Line> findLineOne(){
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='1'");
		List<Line> lineone=query.list();
		return lineone;
	}
	
	public List<Line> findLineTwo() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='2'");		
		List<Line> linetwo=query.list();		
		return linetwo;
	}
	
	public List<Line> findLineThree() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='3'");		
		List<Line> linethree=query.list();		
		return linethree;
	}
	
	public List<Line> findLineFour() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='4'");		
		List<Line> linefour=query.list();		
		return linefour;
	}
	
	public List<Line> findLineFive() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='5'");		
		List<Line> linefive=query.list();		
		return linefive;
	}
	
	public List<Line> findLineSix() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='6'");		
		List<Line> linesix=query.list();		
		return linesix;
	}
	
	public List<Line> findLineEight() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='8'");		
		List<Line> lineeight=query.list();		
		return lineeight;
	}
	
	public List<Line> findLineGF() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Line l where l.lineID='9'");		
		List<Line> linegf=query.list();		
		return linegf;
	}
	
	//修改线路信息
	public void updLine(Line line){
		Query query=sessionFactory.getCurrentSession().createQuery("update Line l set l.enName=? ,l.stationName=? ,l.time=? ,l.exitinfo=? ,l.businfo=? ,l.lineID=?where l.stationID=?");
		
		query.setString(0, line.getEnName());
		query.setString(1, line.getStationName());
		query.setString(2, line.getTime());
		query.setString(3, line.getExitinfo());
		query.setString(4, line.getBusinfo());
		query.setInteger(5, line.getLineID());
		query.setInteger(6, line.getStationID());
		query.executeUpdate();
	}
	
}
