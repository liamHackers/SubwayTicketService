package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_station", catalog = "subway")
public class Line {
	@Id
	@GeneratedValue
	private int stationID;
	private String enName;
	private String stationName; 
	private String time;
	private String exitinfo;
	private String businfo;
	private int lineID;
	
	public Line() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Line(int stationID, String enName, String stationName, String time, String exitinfo, String businfo,int lineID) {
		super();
		this.stationID = stationID;
		this.enName = enName;
		this.stationName = stationName;
		this.time = time;
		this.exitinfo = exitinfo;
		this.businfo = businfo;
		this.lineID = lineID;
	}
	
	public int getStationID() {
		return stationID;
	}
	public void setStationID(int stationID) {
		this.stationID = stationID;
	}	
	public String getEnName() {
		return enName;
	}
	public void setEnName(String enName) {
		this.enName = enName;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getExitinfo() {
		return exitinfo;
	}
	public void setExitinfo(String exitinfo) {
		this.exitinfo = exitinfo;
	}
	public String getBusinfo() {
		return businfo;
	}
	public void setBusinfo(String businfo) {
		this.businfo = businfo;
	}
	public int getLineID() {
		return lineID;
	}
	public void setLineID(int lineID) {
		this.lineID = lineID;
	}
	@Override
	public String toString() {
		return "Line [businfo=" + businfo + ", enName=" + enName
				+ ", exitinfo=" + exitinfo + ", lineID=" + lineID
				+ ", stationID=" + stationID + ", stationName=" + stationName
				+ ", time=" + time + "]";
	}
	
}
