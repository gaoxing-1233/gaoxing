package com.buba.wineparty.com.buba.bean;

public class Items {
	private int id;
	private String numActual;
	private String cnumActual;
	private int newClient;
	private int oldClient;
	private int yxClient;
	private Float money;
	private String available;
	private String createtime;
	private String autoTimestamp;
	private int deptId;
	private int areaId;
	private String areaCode;
	private int userId;
	private String userCode;
	private String deptName;
	private int numActivities;
	private String areaName;
	private int planId;
	private String nameActivities;
	private double avg;

	@Override
	public String toString() {
		return "Items{" +
				"id=" + id +
				", numActual='" + numActual + '\'' +
				", cnumActual='" + cnumActual + '\'' +
				", newClient=" + newClient +
				", oldClient=" + oldClient +
				", yxClient=" + yxClient +
				", money=" + money +
				", available='" + available + '\'' +
				", createtime='" + createtime + '\'' +
				", autoTimestamp='" + autoTimestamp + '\'' +
				", deptId=" + deptId +
				", areaId=" + areaId +
				", areaCode='" + areaCode + '\'' +
				", userId=" + userId +
				", userCode='" + userCode + '\'' +
				", deptName='" + deptName + '\'' +
				", numActivities=" + numActivities +
				", areaName='" + areaName + '\'' +
				", planId=" + planId +
				", nameActivities='" + nameActivities + '\'' +
				", avg=" + avg +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumActual() {
		return numActual;
	}

	public void setNumActual(String numActual) {
		this.numActual = numActual;
	}

	public String getCnumActual() {
		return cnumActual;
	}

	public void setCnumActual(String cnumActual) {
		this.cnumActual = cnumActual;
	}

	public int getNewClient() {
		return newClient;
	}

	public void setNewClient(int newClient) {
		this.newClient = newClient;
	}

	public int getOldClient() {
		return oldClient;
	}

	public void setOldClient(int oldClient) {
		this.oldClient = oldClient;
	}

	public int getYxClient() {
		return yxClient;
	}

	public void setYxClient(int yxClient) {
		this.yxClient = yxClient;
	}

	public Float getMoney() {
		return money;
	}

	public void setMoney(Float money) {
		this.money = money;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getAutoTimestamp() {
		return autoTimestamp;
	}

	public void setAutoTimestamp(String autoTimestamp) {
		this.autoTimestamp = autoTimestamp;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public int getAreaId() {
		return areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public int getNumActivities() {
		return numActivities;
	}

	public void setNumActivities(int numActivities) {
		this.numActivities = numActivities;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public String getNameActivities() {
		return nameActivities;
	}

	public void setNameActivities(String nameActivities) {
		this.nameActivities = nameActivities;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public Items() {

	}

	public Items(int id, String numActual, String cnumActual, int newClient, int oldClient, int yxClient, Float money, String available, String createtime, String autoTimestamp, int deptId, int areaId, String areaCode, int userId, String userCode, String deptName, int numActivities, String areaName, int planId, String nameActivities, double avg) {

		this.id = id;
		this.numActual = numActual;
		this.cnumActual = cnumActual;
		this.newClient = newClient;
		this.oldClient = oldClient;
		this.yxClient = yxClient;
		this.money = money;
		this.available = available;
		this.createtime = createtime;
		this.autoTimestamp = autoTimestamp;
		this.deptId = deptId;
		this.areaId = areaId;
		this.areaCode = areaCode;
		this.userId = userId;
		this.userCode = userCode;
		this.deptName = deptName;
		this.numActivities = numActivities;
		this.areaName = areaName;
		this.planId = planId;
		this.nameActivities = nameActivities;
		this.avg = avg;
	}
}
