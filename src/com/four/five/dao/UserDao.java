package com.four.five.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.four.five.domain.Notice;
import com.four.five.domain.User;

public interface UserDao {

	/*
	 * 查询用户
	 */
	public List<User> findAll();

	/*
	 * 获得总记录数
	 */
	public int getAllRowCount();

	// 删除用户
	public void delUser(int userID);

	// 根据id好获取用户
	public User getUser(int userID);

	// 更改用户
	public void updUser(User user);

	// 添加用户
	public void addUser(User user);

	// 根据用户名和密码获取用户
	public User gerUserByName(String userName, String password);

	// 根据用户名和email获取用户
	public User gerUserByEmail(String userName, String email);

	// 分页查询通告
	public List<User> queryForPage(int offset, int length);

	// 根据用户名和邮箱地址获取用户密码
	public String getUsernameAndPassword(String userName, String email);

	// 修改密码
	public void updatepassword(User user);

	// 在线充值
	public void recharge(User user);

	// 更新余额
	public void updBal(User user);

	/**
	 * 添加图片路径
	 * 
	 * @param user
	 */
	public void addPhoto(User user);

	/**
	 * 获取图片路径
	 * 
	 * @param userID
	 * @return
	 */
	public User getPhoto(int userID);

	// 支付密码
	public User paypassword(int userID);

	// 插入支付密码
	public void updPaypassword(User user);

}
