package com.four.five.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_order", catalog = "subway")
public class Order {
	@Id
	@GeneratedValue
	private int id;
	private String orderID;
	// @Column(name="Start")
	private String start;
	// @Column(name="Terminal")
	private String terminal;
	private float price;
	private String status;
	@ManyToOne
	@JoinColumn(name = "userID")
	private User user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getTerminal() {
		return terminal;
	}

	public void setTerminal(String terminal) {
		this.terminal = terminal;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Order() {
		super();
	}

	public Order(int id, String orderID, String start, String terminal,
			float price, String status, User user) {
		super();
		this.id = id;
		this.orderID = orderID;
		this.start = start;
		this.terminal = terminal;
		this.price = price;
		this.status = status;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", orderID=" + orderID + ", start=" + start
				+ ", terminal=" + terminal + ", price=" + price + ", status="
				+ status + ", user=" + user + "]";
	}

}
