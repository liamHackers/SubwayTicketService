package com.four.five.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.hibernate.SessionFactory;

import com.four.five.dao.UserDao;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.domain.User;
import com.four.five.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Resource
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	// 查询用户
	public List<User> findAll() {
		List<User> users = userDao.findAll();
		return users;
	}

	// 删除用户
	public void delUser(int userID) {
		userDao.delUser(userID);

	}

	// 根据id查询用户
	public User getUser(int userID) {
		return userDao.getUser(userID);
	}

	// 更改用户
	public void updUser(User user) {
		userDao.updUser(user);

	}

	// 添加用户
	public void addUser(User user) {
		userDao.addUser(user);

	}

	// 登录
	@Override
	public User gerUserByName(String userName, String password) {
		System.out.println("111111");
		User user = userDao.gerUserByName(userName, password);
		System.out.println("user==>" + user);
		return user;

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
	public Page queryForPage(int currentPage, int pageSize) {

		Page page = new Page();
		// 总记录数
		int allRow = userDao.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<User> list = userDao.queryForPage(offset, pageSize);

		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);

		return page;
	}

	// 修改密码
	public void changePassword(int userid, String password) {
		Query query = sessionFactory.openSession().createQuery(
				"update User u set u.password=? where u.userId=?");
		query.setString(0, password);
		query.setInteger(1, userid);
		query.executeUpdate();
	}

	@Override
	public String getUsernameAndPassword(String userName, String email) {
		return userDao.getUsernameAndPassword(userName, email);
	}

	@Override
	public void updatepassword(User user) {
		userDao.updatepassword(user);

	}

	// 在线充值
	public void recharge(User user) {
		userDao.recharge(user);
	}

	// 更新余额
	public void updBal(User user) {
		userDao.updBal(user);
	}

	@Override
	public void addPhoto(User user) {
		userDao.addPhoto(user);

	}

	@Override
	public User getPhoto(int userID) {
		User user = userDao.getPhoto(userID);
		return user;
	}

	@Override
	public User gerUserByEmail(String userName, String email) {
		// TODO Auto-generated method stub
		return userDao.gerUserByEmail(userName, email);
	}

	// 支付密码
	public User paypassword(int userID) {
		return userDao.paypassword(userID);
	}

	// 插入支付密码
	public void updPaypassword(User user) {
		userDao.updPaypassword(user);

	}
}
