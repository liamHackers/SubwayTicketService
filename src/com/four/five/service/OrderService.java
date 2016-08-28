package com.four.five.service;

import java.util.List;

import com.four.five.domain.Order;
import com.four.five.domain.Page;

public interface OrderService {

	public Page<Order> queryByPage (int currentPage, int pageSize);
	
	// 分页获取订单信息
		public Page queryForPage(int currentPage, int pageSize,int userID);
		
		// 退票
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
