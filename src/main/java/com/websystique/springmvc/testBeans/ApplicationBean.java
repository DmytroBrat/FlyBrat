package com.websystique.springmvc.testBeans;

/**
 * Created by dbrat on 04.06.2017.
 */
public class ApplicationBean {
    private String getRandomStr;
    private String getGetRandomStr2;

    public String getGetRandomStr() {
        return getRandomStr;
    }

    public void setGetRandomStr(String getRandomStr) {
        this.getRandomStr = getRandomStr;
    }

    public String getGetGetRandomStr2() {
        return getGetRandomStr2;
    }

    public void setGetGetRandomStr2(String getGetRandomStr2) {
        this.getGetRandomStr2 = getGetRandomStr2;
    }

    @Override
    public String toString() {
        return "ApplicationBean{" +
                "getRandomStr='" + getRandomStr + '\'' +
                ", getGetRandomStr2='" + getGetRandomStr2 + '\'' +
                '}';
    }
}
