package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_messageboad", catalog = "subway")
public class MessageBoad {
	@Id
	@GeneratedValue
	private int messageID;
	private String time1;
	private String time2;
	private String pusher1;
	private String pusher2;
	private String content1;
	private String content2;
	public int getMessageID() {
		return messageID;
	}
	public void setMessageID(int messageID) {
		this.messageID = messageID;
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public String getPusher1() {
		return pusher1;
	}
	public void setPusher1(String pusher1) {
		this.pusher1 = pusher1;
	}
	public String getPusher2() {
		return pusher2;
	}
	public void setPusher2(String pusher2) {
		this.pusher2 = pusher2;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public MessageBoad(int messageID, String time1, String time2,
			String pusher1, String pusher2, String content1, String content2) {
		super();
		this.messageID = messageID;
		this.time1 = time1;
		this.time2 = time2;
		this.pusher1 = pusher1;
		this.pusher2 = pusher2;
		this.content1 = content1;
		this.content2 = content2;
	}
	public MessageBoad() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
