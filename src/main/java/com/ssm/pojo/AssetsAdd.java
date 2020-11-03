package com.ssm.pojo;


public class AssetsAdd {
    private int id;
    private String assetsAdd_name;
    private String assetsAdd_class;
    private String assetsAdd_time;
    private String assetsAdd_user;
    private String assetsAdd_msg;
    private int assetsAdd_borrow;

    public int getAssetsAdd_borrow() {
        return assetsAdd_borrow;
    }

    public void setAssetsAdd_borrow(int assetsAdd_borrow) {
        this.assetsAdd_borrow = assetsAdd_borrow;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAssetsAdd_name() {
        return assetsAdd_name;
    }

    public void setAssetsAdd_name(String assetsAdd_name) {
        this.assetsAdd_name = assetsAdd_name;
    }

    public String getAssetsAdd_class() {
        return assetsAdd_class;
    }

    public void setAssetsAdd_class(String assetsAdd_class) {
        this.assetsAdd_class = assetsAdd_class;
    }

    public String getAssetsAdd_time() {
        return assetsAdd_time;
    }

    public void setAssetsAdd_time(String assetsAdd_time) {
        this.assetsAdd_time = assetsAdd_time;
    }

    public String getAssetsAdd_user() {
        return assetsAdd_user;
    }

    public void setAssetsAdd_user(String assetsAdd_user) {
        this.assetsAdd_user = assetsAdd_user;
    }

    public String getAssetsAdd_msg() {
        return assetsAdd_msg;
    }

    public void setAssetsAdd_msg(String assetsAdd_msg) {
        this.assetsAdd_msg = assetsAdd_msg;
    }

    @Override
    public String toString() {
        return "AssetsAdd{" +
                "id=" + id +
                ", assetsAdd_name='" + assetsAdd_name + '\'' +
                ", assetsAdd_class='" + assetsAdd_class + '\'' +
                ", assetsAdd_time='" + assetsAdd_time + '\'' +
                ", assetsAdd_user='" + assetsAdd_user + '\'' +
                ", assetsAdd_msg='" + assetsAdd_msg + '\'' +
                '}';
    }
}
