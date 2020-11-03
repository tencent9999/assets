package com.ssm.pojo;

import java.util.List;

public class borrow {
    private int id;
    private int Aid;
    private String borrow_time1;
    private String borrow_user;
    private int borrow_money;
    private String borrow_time2;
    private String borrow_msg;
    private List<AssetsAdd> AssetsAdd;
    private int borrow_on;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAid() {
        return Aid;
    }

    public void setAid(int aid) {
        Aid = aid;
    }

    public String getBorrow_time1() {
        return borrow_time1;
    }

    public void setBorrow_time1(String borrow_time1) {
        this.borrow_time1 = borrow_time1;
    }

    public String getBorrow_user() {
        return borrow_user;
    }

    public void setBorrow_user(String borrow_user) {
        this.borrow_user = borrow_user;
    }

    public int getBorrow_money() {
        return borrow_money;
    }

    public void setBorrow_money(int borrow_money) {
        this.borrow_money = borrow_money;
    }

    public String getBorrow_time2() {
        return borrow_time2;
    }

    public void setBorrow_time2(String borrow_time2) {
        this.borrow_time2 = borrow_time2;
    }

    public String getBorrow_msg() {
        return borrow_msg;
    }

    public void setBorrow_msg(String borrow_msg) {
        this.borrow_msg = borrow_msg;
    }

    public List<com.ssm.pojo.AssetsAdd> getAssetsAdd() {
        return AssetsAdd;
    }

    public void setAssetsAdd(List<com.ssm.pojo.AssetsAdd> assetsAdd) {
        AssetsAdd = assetsAdd;
    }

    public int getBorrow_on() {
        return borrow_on;
    }

    public void setBorrow_on(int borrow_on) {
        this.borrow_on = borrow_on;
    }

    @Override
    public String toString() {
        return "borrow{" +
                "id=" + id +
                ", Aid=" + Aid +
                ", borrow_time1='" + borrow_time1 + '\'' +
                ", borrow_user='" + borrow_user + '\'' +
                ", borrow_money=" + borrow_money +
                ", borrow_time2='" + borrow_time2 + '\'' +
                ", borrow_msg='" + borrow_msg + '\'' +
                ", AssetsAdd=" + AssetsAdd +
                '}';
    }
}