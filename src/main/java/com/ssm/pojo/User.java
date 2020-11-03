package com.ssm.pojo;

import org.springframework.stereotype.Component;

@Component
public class User {
    private int user_id;
    private String user;
    private String user_name;
    private String user_password;
    private String email;
    private String tel;
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user='" + user + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_password='" + user_password + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                '}';
    }
}