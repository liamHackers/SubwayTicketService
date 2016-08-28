package com.four.five.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tb_user", catalog = "subway")
public class User {
	
	@Id
	@GeneratedValue
	private int userID;//用户id
	private String name;//姓名
	private String userName;//用户名
	private String password;//密码
	private String identity;//身份证	
	private int point;//积分
	private String email;//邮箱
	private String bankCard;//银行卡
	private float balance;//余额
	private String photoPath;//图片路径
    private int paypassword;//支付密码
	
	
	
	
	
	public int getPaypassword() {
		return paypassword;
	}
	public void setPaypassword(int paypassword) {
		this.paypassword = paypassword;
	}


	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="user")
	private List<Order> orders=new ArrayList<Order>();
	
	
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBankCard() {
		return bankCard;
	}
	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	
	
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	
	
	public User(int userID, String name, String userName, String password,
			String identity, int point, String email, String bankCard,
			float balance, String photoPath ) {
		super();
		this.userID = userID;
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.identity = identity;
		this.point = point;
		this.email = email;
		this.bankCard = bankCard;
		this.balance = balance;
		this.photoPath = photoPath;
	
	}
	
	
	public User(String name, String userName, String password, String identity,
			int point, String email, String bankCard, float balance,
			String photoPath) {
		super();
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.identity = identity;
		this.point = point;
		this.email = email;
		this.bankCard = bankCard;
		this.balance = balance;
		this.photoPath = photoPath;
	
	}
	public User(String name, String userName, String password, String identity,
			int point, String email, String bankCard, float balance,
			String photoPath, int paypassword) {
		super();
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.identity = identity;
		this.point = point;
		this.email = email;
		this.bankCard = bankCard;
		this.balance = balance;
		this.photoPath = photoPath;
		this.paypassword = paypassword;
	}
	
	
	@Override
	public String toString() {
		return "User [userID=" + userID + ", name=" + name + ", userName="
				+ userName + ", password=" + password + ", identity="
				+ identity + ", point=" + point + ", email=" + email
				+ ", bankCard=" + bankCard + ", balance=" + balance
				+ ", photoPath=" + photoPath + ", paypassword=" + paypassword
				+ "]";
	}
	
	
	
	
	
}
