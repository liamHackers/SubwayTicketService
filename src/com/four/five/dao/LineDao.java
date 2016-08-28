package com.four.five.dao;

import java.util.List;

import com.four.five.domain.Line;

public interface LineDao {

	public List<Line> findLineOne();
	
	public List<Line> findLineTwo();
	
	public List<Line> findLineThree();
	
	public List<Line> findLineFour();
	
	public List<Line> findLineFive();
	
	public List<Line> findLineSix();
	
	public List<Line> findLineEight();
	
	public List<Line> findLineGF();
	
	//修改线路信息
	public void updLine(Line line);
		
}
