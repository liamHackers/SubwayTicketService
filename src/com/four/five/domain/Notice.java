package com.four.five.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "tb_notice", catalog = "subway")
public class Notice {

	@Id
	@GeneratedValue
	private int noticeID;//新闻ID
	private String time;//发布时间
	private String title;//公告标题
	private String pusher;//发布人
	private String content1;//公告内容
	public int getNoticeID() {
		return noticeID;
	}
	public void setNoticeID(int noticeID) {
		this.noticeID = noticeID;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public Notice(int noticeID, String time, String title, String pusher,
			String content1) {
		super();
		this.noticeID = noticeID;
		this.time = time;
		this.title = title;
		this.pusher = pusher;
		this.content1 = content1;
	}
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
