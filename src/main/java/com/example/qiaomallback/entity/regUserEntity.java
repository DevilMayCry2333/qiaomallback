package com.example.qiaomallback.entity;

public class regUserEntity {
    private Integer uid;

    private String username;

    private String password;

    private String province;

    private String islock;

    private String tel;

    private String city;

    private String county;

    private String detail;

    public regUserEntity(Integer uid, String username, String password, String province, String islock, String tel, String city, String county, String detail) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.province = province;
        this.islock = islock;
        this.tel = tel;
        this.city = city;
        this.county = county;
        this.detail = detail;
    }

    public regUserEntity() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getIslock() {
        return islock;
    }

    public void setIslock(String islock) {
        this.islock = islock == null ? null : islock.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county == null ? null : county.trim();
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }
}