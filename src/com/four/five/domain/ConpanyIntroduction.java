package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_conpanyIntroduction", catalog = "subway")
public class ConpanyIntroduction {
	@Id
	@GeneratedValue
	private int conID;
	private String content1;
	public int getConID() {
		return conID;
	}
	public void setConID(int conID) {
		this.conID = conID;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public ConpanyIntroduction(int conID, String content1) {
		super();
		this.conID = conID;
		this.content1 = content1;
	}
	public ConpanyIntroduction() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
