package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;



import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.OrderDao;
import com.four.five.domain.Order;
import com.four.five.domain.User;
@Repository
public class OrderDaoImpl implements OrderDao{
	private SessionFactory sessionFactory;
	
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//获得总记录数
	public int getAllRowCount() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Order");
		int count=query.list().size();
		return count;
	}
	
	/**
	 * 
	 * 分页查询用户订单信息
	 * offset:当前页的第一行位置
	 * length：每页的长度
	 */
	@Override
	public List<Order> getAllOrder(int offset,int length) {
		List<Order> orders=null;
		try {
			Query query=sessionFactory.getCurrentSession().createQuery("from Order o left join fetch o.user order by o.id desc");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			orders=query.list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;
	}


	@Override
	public int totalCount() {
		Query query=sessionFactory.getCurrentSession().createQuery("from Order");
		int totalCount=query.list().size();
		return totalCount;
	}
	
	//分页查询订单信息
		@Override
		public List<Order> queryForPage(int offset, int length,int userID) {
			List<Order> orders=null;
			try {
				Query query=sessionFactory.getCurrentSession().createQuery("from Order where userID=? order by id desc");
				query.setInteger(0, userID);
				query.setFirstResult(offset);
				query.setMaxResults(length);
				orders=query.list();
			} catch (Exception e) {
				e.printStackTrace();
			}			
			return orders;
		}
		
		//退票
		public void delOrder(String orderID) {
			
			Query query=sessionFactory.getCurrentSession().createQuery("update Order o set o.status='已退票' where o.status='未消费' and o.orderID=?");
			query.setString(0, orderID);
			query.executeUpdate();
		}
		
		
		//获取价格
		@Override
		public void updatePrice(Order order) {
			Query query=sessionFactory.getCurrentSession().createQuery("update Order o set o.start=? ,o.terminal=? o.price=? where userID=?");
			query.setString(0,order.getStart());
			query.setString(1, order.getTerminal());
			query.setFloat(2, order.getPrice());
		
			query.executeUpdate();
			
		}
		
		//插入购买地铁数据到数据库
		public void addOrder(Order order){
			sessionFactory.getCurrentSession().save(order);
		
		}

		//通过userID获取购票记录
		public Order getOrderByUserID(int userID){
			Query query=sessionFactory.getCurrentSession().createQuery("from Order where userID=?");
			query.setInteger(0, userID);
			Order order=(Order) query.uniqueResult();
			return order;
			
		}

		@Override
		public List<Order> getOrder(String orderID) {
			Query query=sessionFactory.getCurrentSession().createQuery("from Order o where o.orderID=?");
			query.setString(0, orderID);
			List<Order> orders=query.list();
			return orders;
		}

	
		
}
