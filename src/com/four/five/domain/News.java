package com.four.five.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "tb_news", catalog = "subway")
public class News {

	@Id
	@GeneratedValue
	private int newID;//新闻ID
	private String time;//发布时间
	private String point;//新闻重点
	private String pusher;//发布人
	private String title;//新闻标题
	private String content1;//新闻内容
	public int getNewID() {
		return newID;
	}
	public void setNewID(int newID) {
		this.newID = newID;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public String getPusher() {
		return pusher;
	}
	public void setPusher(String pusher) {
		this.pusher = pusher;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public News(int newID, String time, String point, String pusher,
			String title, String content1) {
		super();
		this.newID = newID;
		this.time = time;
		this.point = point;
		this.pusher = pusher;
		this.title = title;
		this.content1 = content1;
	}
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
