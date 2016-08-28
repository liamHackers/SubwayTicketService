package com.four.five.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.four.five.dao.UserDao;
import com.four.five.domain.Mail;
import com.four.five.domain.Notice;
import com.four.five.domain.User;
import com.four.five.utils.MailUtil;

@Repository
public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 查询用户
	public List<User> findAll() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from User");
		List<User> users = query.list();
		return users;
	}

	// 获得总记录数
	public int getAllRowCount() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from User");
		int count = query.list().size();
		return count;
	}

	// 删除用户
	public void delUser(int userID) {

		Query query = sessionFactory.getCurrentSession().createQuery(
				"delete from User u where u.userID=?");
		query.setInteger(0, userID);
		query.executeUpdate();
	}

	// 根据id号获得用户
	public User getUser(int userID) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from User u where u.userID=?");
		query.setInteger(0, userID);
		return (User) query.uniqueResult();
	}

	// 更改用户
	public void updUser(User user) {
		Query query = sessionFactory
				.getCurrentSession()
				.createQuery(
						"update User u set u.userName=? ,u.email=? u.bankCard=? where u.userID=?");
		query.setString(0, user.getUserName());
		query.setString(1, user.getEmail());
		query.setString(2, user.getBankCard());
		query.setInteger(3, user.getUserID());
		query.executeUpdate();

	}

	// 修改密码
	public void updatepassword(User user) {

		Query query = sessionFactory.getCurrentSession().createQuery(
				"update User u set u.password=? where u.userID=?");
		query.setString(0, user.getPassword());
		query.setInteger(1, user.getUserID());
		query.executeUpdate();
	}

	// 添加用户
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);

	}

	// 根据用户名和密码获取用户
	@Override
	public User gerUserByName(String userName, String password) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from User u where u.userName=? and u.password=?");
		query.setString(0, userName);
		query.setString(1, password);
		List<User> users = query.list();
		if (users.size() != 0) {
			return users.get(0);
		} else {
			return null;
		}

	}

	// 分页查询用户信息
	@Override
	public List<User> queryForPage(int offset, int length) {
		List<User> users = null;
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from User");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			users = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return users;
	}

	// 根据用户名获取用户名的邮箱和密码
	public String getUsernameAndPassword(String userName, String email) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from User u where u.userName=? and u.email=?");
		query.setString(0, userName);
		query.setString(1, email);
		List<User> users = query.list();
		if (users.size() != 0) {

			Mail mail = new Mail();
			mail.setHost("smtp.sina.com"); // 设置邮件服务器,如果不用163的,自己找找看相关的
			mail.setSender("chinesesubway@sina.com");
			mail.setReceiver(users.get(0).getEmail()); // 接收人
			mail.setUsername("chinesesubway@sina.com"); // 登录账号,一般都是和邮箱名一样吧
			mail.setPassword("tomei1314"); // 发件人邮箱的登录密码
			mail.setSubject("中国地铁！");
			mail.setMessage("您好！您的密码为：" + users.get(0).getPassword());
			new MailUtil().send(mail);
			return "success";

		} else {
			return "error";
		}
	}
	
	//在线充值
		public void recharge(User user) {
				Query query=sessionFactory.getCurrentSession().createQuery("update User u set u.balance=? where u.userID=?");
				query.setFloat(0, user.getBalance());
				query.setInteger(1, user.getUserID());
				query.executeUpdate();
			}
	
	//更新余额
		@Override
		public void updBal(User user) {
			Query query = sessionFactory.getCurrentSession().createQuery("update User  set balance=? where userID=?");
			query.setFloat(0, user.getBalance());
			query.setInteger(1, user.getUserID());
			query.executeUpdate();
			
		}

		
		/* 添加图片路径
		 */
		@Override
		public void addPhoto(User user) {
			Query query=sessionFactory.getCurrentSession().createQuery("update User set photoPath=? where userID=?");
			query.setString(0, user.getPhotoPath());
			query.setInteger(1, user.getUserID());
			query.executeUpdate();
			
			
		}

		/* 获取图片路径
		 */
		@Override
		public User getPhoto(int userID) {
			Query query=sessionFactory.getCurrentSession().createQuery("from User u where u.userID=?");
			query.setInteger(0, userID);
			return (User) query.uniqueResult();
		}

		// 根据用户名和email获取用户
		public User gerUserByEmail(String userName, String email) {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from User u where u.userName=? and u.email=?");
			query.setString(0, userName);
			query.setString(1, email);
			List<User> users = query.list();
			if (users.size() != 0) {
				return users.get(0);
			} else {
				return null;
			}
		}
		
		
		//支付密码
		public User paypassword(int userID){
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from User u where u.userID=?");
			query.setInteger(0, userID);
			return (User) query.uniqueResult(); 
		}
		
		
		// 更改支付密码
		public void updPaypassword(User user) {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"update User set Paypassword=? where userID=?");
			query.setInteger(0, user.getPaypassword());
			query.setInteger(1, user.getUserID());
			query.executeUpdate();

		}
}
