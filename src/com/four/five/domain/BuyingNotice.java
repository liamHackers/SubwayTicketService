package com.four.five.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_buyingnotice", catalog = "subway")
public class BuyingNotice {
	@Id
	@GeneratedValue
	private int id;//自增ID
	private Date time;//更改时间
	private String pusher;//发布人
	private String content1;//内容
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getPusher() {
		return pusher;
	}
	public void setPusher(String pusher) {
		this.pusher = pusher;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public BuyingNotice(int id, Date time, String pusher, String content1) {
		super();
		this.id = id;
		this.time = time;
		this.pusher = pusher;
		this.content1 = content1;
	}
	public BuyingNotice() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
