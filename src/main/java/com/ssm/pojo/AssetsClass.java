package com.ssm.pojo;

public class AssetsClass {
    private int id;
    private String assetsClass_name;
    private String assetsClass_num;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAssetsClass_name() {
        return assetsClass_name;
    }

    public void setAssetsClass_name(String assetsClass_name) {
        this.assetsClass_name = assetsClass_name;
    }

    public String getAssetsClass_num() {
        return assetsClass_num;
    }

    public void setAssetsClass_num(String assetsClass_num) {
        this.assetsClass_num = assetsClass_num;
    }

    @Override
    public String toString() {
        return "AssetsClass{" +
                "id=" + id +
                ", assetsClass_name='" + assetsClass_name + '\'' +
                ", assetsClass_num='" + assetsClass_num + '\'' +
                '}';
    }
}
