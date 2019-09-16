package com.buba.wineparty.com.buba.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import java.util.Date;

public class Plan {
	private int id;
	private String nameActivities;
	private int numActivities;
	private int deptId;
	private String deptName;
	private String areaCode;
	private int areaId;
	private String available;
	private String type;
	private int planId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern ="yyyy-MM-dd" )
	private Date startTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern ="yyyy-MM-dd" )
	private Date endTime;
	private String timestamp;

	@Override
	public String toString() {
		return "Plan{" +
				"id=" + id +
				", nameActivities='" + nameActivities + '\'' +
				", numActivities=" + numActivities +
				", deptId=" + deptId +
				", deptName='" + deptName + '\'' +
				", areaCode='" + areaCode + '\'' +
				", areaId=" + areaId +
				", available='" + available + '\'' +
				", type='" + type + '\'' +
				", planId=" + planId +
				", startTime=" + startTime +
				", endTime=" + endTime +
				", timestamp='" + timestamp + '\'' +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameActivities() {
		return nameActivities;
	}

	public void setNameActivities(String nameActivities) {
		this.nameActivities = nameActivities;
	}

	public int getNumActivities() {
		return numActivities;
	}

	public void setNumActivities(int numActivities) {
		this.numActivities = numActivities;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public int getAreaId() {
		return areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public Plan() {
	}

	public Plan(int id, String nameActivities, int numActivities, int deptId, String deptName, String areaCode, int areaId, String available, String type, int planId, Date startTime, Date endTime, String timestamp) {

		this.id = id;
		this.nameActivities = nameActivities;
		this.numActivities = numActivities;
		this.deptId = deptId;
		this.deptName = deptName;
		this.areaCode = areaCode;
		this.areaId = areaId;
		this.available = available;
		this.type = type;
		this.planId = planId;
		this.startTime = startTime;
		this.endTime = endTime;
		this.timestamp = timestamp;
	}
}
