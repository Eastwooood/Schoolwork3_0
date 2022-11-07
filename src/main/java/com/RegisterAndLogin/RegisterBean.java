package com.RegisterAndLogin;

public class RegisterBean {
    String userId="";
    String userName="";
    String userPassword="";
    String userIdentity="";

    String backNews="";

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getBackNews() {
        return backNews;
    }

    public void setBackNews(String backNews) {
        this.backNews = backNews;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserIdentity() {
        return userIdentity;
    }

    public void setUserIdentity(String userIdentity) {
        this.userIdentity = userIdentity;
    }
}
