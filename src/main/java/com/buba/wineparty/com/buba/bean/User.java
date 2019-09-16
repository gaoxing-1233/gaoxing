package com.buba.wineparty.com.buba.bean;

public class User {
    private int id;
    private String usercode;
    private String username;
    private String password;
    private String level;
    private int deptId;
    private int areaId;
    private String areaCode;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", usercode='" + usercode + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", level='" + level + '\'' +
                ", deptId=" + deptId +
                ", areaId=" + areaId +
                ", areaCode='" + areaCode + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
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

    public User() {

    }

    public User(int id, String usercode, String username, String password, String level, int deptId, int areaId, String areaCode) {

        this.id = id;
        this.usercode = usercode;
        this.username = username;
        this.password = password;
        this.level = level;
        this.deptId = deptId;
        this.areaId = areaId;
        this.areaCode = areaCode;
    }
}
