package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.four.five.dao.OrderDao;
import com.four.five.domain.Order;
import com.four.five.domain.Page;
import com.four.five.domain.User;
import com.four.five.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	@Resource
	private OrderDao orderDao;
	
	
	public OrderDao getOrderDao() {
		return orderDao;
	}


	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}


	@Override
	public Page<Order> queryByPage(int currentPage, int pageSize) {
		Page page=new Page();
		//获得总记录数
		int totalRecords=orderDao.totalCount();
		//获取当前页的开始位置
		int offset=page.countOffset(currentPage, pageSize);
		//分页查询结果集
		List<Order> orders=orderDao.getAllOrder(offset, pageSize);
		
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(totalRecords);
		page.setList(orders);
		
		return page;
	}
	
	
	/**
	 * 分页查询
	 * 
	 * @param currentPage
	 *            当前页号：现在显示的页数
	 * @param pageSize
	 *            每页显示的记录条数
	 * @return 封闭了分页信息(包括记录集list)的Bean
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public Page queryForPage(int currentPage, int pageSize,int userID) {

		Page page = new Page();
		// 总记录数
		int allRow = orderDao.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<Order> orders = orderDao.queryForPage(offset, pageSize,userID);

		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(orders);

		return page;
	}
	
	//退票
		public void delOrder(String orderID) {
			orderDao.delOrder(orderID);
			
		}
		
		//获取价格
		public void updatePrice(Order order) {
			orderDao.updatePrice(order);
		}
		//插入购买地铁数据到数据库
		public void addOrder(Order order){
			orderDao.addOrder(order);
		}
		
		//通过userID获取购票记录
		public Order getOrderByUserID(int userID){
			Order order=orderDao.getOrderByUserID(userID);
			return order;
			
		}


		@Override
		public List<Order> getOrder(String orderID) {
			List<Order> orders=orderDao.getOrder(orderID);
			return orders;
		}


		


		


		
}
