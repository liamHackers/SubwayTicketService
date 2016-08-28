package com.four.five.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_station_point",catalog="subway")
public class StationPoint {
	@Id
	@GeneratedValue
	private int stationID;//id号
	private String stationName;//站点名
	private float longitude;//经度
	private float latitude;//纬度
	private String lineName;
	public int getStationID() {
		return stationID;
	}
	public void setStationID(int stationID) {
		this.stationID = stationID;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public String getLineName() {
		return lineName;
	}
	public void setLineName(String lineName) {
		this.lineName = lineName;
	}
	public StationPoint(int stationID, String stationName, float longitude,
			float latitude, String lineName) {
		super();
		this.stationID = stationID;
		this.stationName = stationName;
		this.longitude = longitude;
		this.latitude = latitude;
		this.lineName = lineName;
	}
	public StationPoint() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
