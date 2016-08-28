package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_customservice",catalog="subway")
public class CService {

	@Id
	@GeneratedValue
	private int cserviceID;//客服id号
	private String cserviceName;//客服名
	private String cserviceQQ;//客服qq号
	
	
	public CService(int cserviceID, String cserviceName, String cserviceQQ) {
		super();
		this.cserviceID = cserviceID;
		this.cserviceName = cserviceName;
		this.cserviceQQ = cserviceQQ;
	}
	
	
	public CService() {
		super();
	}


	public int getCserviceID() {
		return cserviceID;
	}
	public void setCserviceID(int cserviceID) {
		this.cserviceID = cserviceID;
	}
	public String getCserviceName() {
		return cserviceName;
	}
	public void setCserviceName(String cserviceName) {
		this.cserviceName = cserviceName;
	}
	public String getCserviceQQ() {
		return cserviceQQ;
	}
	public void setCserviceQQ(String cserviceQQ) {
		this.cserviceQQ = cserviceQQ;
	}
	
	
	
}
