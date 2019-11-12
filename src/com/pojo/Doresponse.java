package com.pojo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class Doresponse {
    private Integer id;

    private Date time;

    private String function;

    private String msg;

    private String status;

    private String admintor;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function == null ? null : function.trim();
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg == null ? null : msg.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getAdmintor() {
        return admintor;
    }

    public void setAdmintor(String admintor) {
        this.admintor = admintor == null ? null : admintor.trim();
    }
}