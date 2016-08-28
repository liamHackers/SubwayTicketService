package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_admin", catalog = "subway")
public class Admin {

	@Id
	@GeneratedValue
	private int aID;//系统员id
	private String aName;//系统员名
	private String password;//密码
	
	public int getaID() {
		return aID;
	}
	public void setaID(int aID) {
		this.aID = aID;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Admin(String aName, String password) {
		super();
		this.aName = aName;
		this.password = password;
	}
	
	
	public Admin(int aID, String aName, String password) {
		super();
		this.aID = aID;
		this.aName = aName;
		this.password = password;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin [aID=" + aID + ", aName=" + aName + ", password="
				+ password + "]";
	}
	
	
	
}
