package com.four.five.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.dao.impl.LineDaoImpl;
import com.four.five.domain.Line;
import com.four.five.domain.User;


@Controller
public class LineController {

	@Resource
	private LineDaoImpl lineDaoImpl;
	
	public LineDaoImpl getLineDaoImpl() {
		return lineDaoImpl;
	}
	public void setLineDaoImpl(LineDaoImpl lineDaoImpl) {
		this.lineDaoImpl = lineDaoImpl;
	}
		
	@RequestMapping(value="/findLineOne")
	public String findLineOne(HttpServletRequest request){
		List<Line> lineone = lineDaoImpl.findLineOne();
		request.setAttribute("lineone", lineone);
		return "line-one.jsp";		
	}
		
	@RequestMapping(value="/findLineTwo")
	public String findLineTwo(HttpServletRequest request){
		List<Line> linetwo = lineDaoImpl.findLineTwo();
		request.setAttribute("linetwo", linetwo);
		return "line-two.jsp";		
	}
	
	@RequestMapping(value="/findLineThree")
	public String findLineThree(HttpServletRequest request){
		List<Line> linethree = lineDaoImpl.findLineThree();
		request.setAttribute("linethree", linethree);
		return "line-three.jsp";		
	}
	
	@RequestMapping(value="/findLineFour")
	public String findLineFour(HttpServletRequest request){
		List<Line> linefour = lineDaoImpl.findLineFour();
		request.setAttribute("linefour", linefour);
		return "line-four.jsp";		
	}
	
	@RequestMapping(value="/findLineFive")
	public String findLineFive(HttpServletRequest request){
		List<Line> linefive = lineDaoImpl.findLineFive();
		request.setAttribute("linefive", linefive);
		return "line-five.jsp";		
	}
	
	@RequestMapping(value="/findLineSix")
	public String findLineSix(HttpServletRequest request){
		List<Line> linesix = lineDaoImpl.findLineSix();
		request.setAttribute("linesix", linesix);
		return "line-six.jsp";		
	}
	
	@RequestMapping(value="/findLineEight")
	public String findLineEight(HttpServletRequest request){
		List<Line> lineeight = lineDaoImpl.findLineEight();
		request.setAttribute("lineeight", lineeight);
		return "line-eight.jsp";		
	}
	
	@RequestMapping(value="/findLineGF")
	public String findLineGF(HttpServletRequest request){
		List<Line> linegf = lineDaoImpl.findLineGF();
		request.setAttribute("linegf", linegf);
		return "line-guangfo.jsp";		
	}
	
	//修改线路信息
	@RequestMapping(value="/updLine")
	public String updLine(Line line,HttpServletRequest request){		
		lineDaoImpl.updLine(line);
		return "admin-line-update.jsp";		
	}
		
}
