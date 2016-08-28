package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import java.util.Date;
@Entity
@Table(name = "tb_safenotice", catalog = "subway")
public class SafeNotice {
	
	@Id
	@GeneratedValue
	private int safenoticeID;//新闻须知ID
	private Date time;//安全须知更改时间
	private String pusher;//安全须知发布人
	private String content1;//安全须知内容
	public int getSafenoticeID() {
		return safenoticeID;
	}
	public void setSafenoticeID(int safenoticeID) {
		this.safenoticeID = safenoticeID;
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
	public SafeNotice(int safenoticeID, Date time, String pusher,
			String content1) {
		super();
		this.safenoticeID = safenoticeID;
		this.time = time;
		this.pusher = pusher;
		this.content1 = content1;
	}
	public SafeNotice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
