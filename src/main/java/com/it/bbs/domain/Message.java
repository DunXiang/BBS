package com.it.bbs.domain;

import java.util.HashMap;
/**
 * AJAX 请求数据的时候封装数据用的
 * */
public class Message {
    private String message;
    private int state;
    public static int USABLE = 1;
    private HashMap<String,String> hashMap = new HashMap<>();

    public Message(String message, int state) {
        this.message = message;
        this.state = state;
    }


    public void addError(String key , String value){
        hashMap.put(key,value);
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public static int getUSABLE() {
        return USABLE;
    }

    public static void setUSABLE(int USABLE) {
        Message.USABLE = USABLE;
    }

    public HashMap<String, String> getHashMap() {
        return hashMap;
    }

    public void setHashMap(HashMap<String, String> hashMap) {
        this.hashMap = hashMap;
    }
}
