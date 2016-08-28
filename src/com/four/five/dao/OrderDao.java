package com.four.five.dao;

import java.util.List;

import com.four.five.domain.Order;
import com.four.five.domain.User;

public interface OrderDao {
	
	/*
	 *获得总记录数
	 */
	public int getAllRowCount();
	//分页查询用户订单信息
	public List<Order> getAllOrder(int offset,int length);
	//获得订单总记录
	public int totalCount();
	
	//分页查询订单
		public List<Order> queryForPage(int offset, int length,int userID);
		
		//退票
		public void delOrder(String orderID);
		
		//获取价格
		public void updatePrice(Order order);
		//插入购买地铁数据到数据库
		public void addOrder(Order order);
		//通过userID获取购票记录
		public Order getOrderByUserID(int userID);
		
		/**
		 * 通过orderid查询
		 * @param orderID
		 * @return
		 */
		public List<Order> getOrder(String orderID);
		
	
		
}
